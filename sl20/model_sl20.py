import sys
import rainbow as rbw
# from rainbow.interactive import Interact
from rainbow.ast.murphi_conv import write_murphi

from .config import cfg
from .hbo import HBo
from .idicagent import IDIAgent
from .ca import CA
from .opcodes import IDI_Opcode, UPI_Opcode, CacheOp
from .common import RTID_STATE, CacheState, MFSState, Protocol
from .idiclink import Link
from .upi_link import ULink
# from .memss import MemSS

class Aux(rbw.Record):
    """Place for non-model state elements.

    Latest values written to cache line, for data consistency checking."""
    latest_data = rbw.Array[cfg.Address, cfg.Line]()

    def update_data(self, addr:cfg.Address, word:cfg.Word, data:cfg.Data):
        self.latest_data[addr][word] = data


class NVL(rbw.Model):

    idic_buffer = cfg.Line()
    buffer_be = cfg.BE()
    hbo = HBo()
    UPIAgent = rbw.Array[cfg.UPIAgents, CA]()  ### abstraction of CBo cache hierarchy
    santa = rbw.Array[cfg.UPIAgents, ULink]()

    IDICAgent = rbw.Array[cfg.IDICAgents, IDIAgent]()
    idiclink = rbw.Array[cfg.IDICAgents, Link]()
    aux = Aux()
    # memss = MemSS()

    @rbw.ModelConfig
    def _connect(self):
        for id in cfg.UPIAgents:
            self.UPIAgent[id].to_hbo.connect(self.santa[id].from_ca)
            self.santa[id].to_ha.connect(self.hbo.from_ca)
            self.hbo.to_ca[id].connect(self.santa[id].from_ha)
            self.santa[id].to_ca.connect(self.UPIAgent[id].from_hbo)
            self.hbo.from_mc_to_santa[id].connect(self.santa[id].from_mc)
            self.santa[id].to_core.connect(self.UPIAgent[id].from_santa)
        for id in cfg.IDICAgents:
            self.IDICAgent[id].to_hbo.connect(self.idiclink[id].from_agent)
            self.idiclink[id].to_fabric.connect(self.hbo.from_idicagent)
            self.hbo.to_idicagent[id].connect(self.idiclink[id].from_fabric)
            self.idiclink[id].to_agent.connect(self.IDICAgent[id].from_hbo)
            self.hbo.from_mc_to_idiclink[id].connect(self.idiclink[id].from_mc)
        for id1 in cfg.UPIAgents:
            for id2 in cfg.UPIAgents:
                self.UPIAgent[id1].to_ca[id2].connect(self.UPIAgent[id2].from_ca)
        # self.hbo.to_mc.connect(self.memss.from_hbo)
        # self.memss.to_hbo.connect(self.hbo.from_mc)
            
    @rbw.StartRule
    def reset(self):
        self.hbo.reset()
        for id in cfg.IDICAgents:
            self.IDICAgent[id].reset()
            self.idiclink[id].reset(id)
        for id in cfg.UPIAgents:
            self.UPIAgent[id].reset(id)
            self.santa[id].reset()
        self.idic_buffer = rbw.Undef
        for word in cfg.Word:
            self.buffer_be[word] = False
        ### aux reset
        for addr in cfg.Address:
            self.aux.latest_data[addr] = self.hbo.mem[addr]

    @rbw.Rule(word=cfg.Word, data=cfg.Data)
    def update_buffer(self, word:cfg.Word, data:cfg.Data):
        """ Fill wrbuffer - a Line and BE with random data"""
        rbw.Guard(not self.buffer_be[word])
        self.idic_buffer[word] = data
        self.buffer_be[word] = True

    def reset_buffer(self):
        self.idic_buffer = rbw.Undef
        for word in cfg.Word:
            self.buffer_be[word] = False

    # @rbw.Rule(idx=cfg.IDICAgents, opcode=IDI_Opcode, address=cfg.Address, selfsnp=rbw.Boolean, cache_near=rbw.Boolean)
    def idicagent_new_request(self, idx:cfg.IDICAgents, opcode:IDI_Opcode, address:cfg.Address, selfsnp:rbw.Boolean, cache_near:rbw.Boolean):
        # rbw.Guard(idx==2 or idx==1)
        # rbw.Guard(cfg.IDIC_SOT_VALID)
        # rbw.Guard(opcode in [IDI_Opcode.RdOwnNoData, IDI_Opcode.SetMonitor, IDI_Opcode.ClrMonitor])
        rbw.Guard(idx==1)
        # rbw.Guard(opcode in [IDI_Opcode.RdAny, IDI_Opcode.RdCurr, IDI_Opcode.RdOwnNoData, IDI_Opcode.ItoMWr, IDI_Opcode.CLFlush, IDI_Opcode.CleanEvict, IDI_Opcode.CleanEvictNoInvalidate, IDI_Opcode.DirtyEvict, IDI_Opcode.DirtyEvictNoInv, IDI_Opcode.CleanEvictNoData, IDI_Opcode.WOWrInv, IDI_Opcode.CLWB, IDI_Opcode.UcRdF])
        # rbw.Guard(opcode in [IDI_Opcode.RdAny, IDI_Opcode.RdCurr, IDI_Opcode.RdOwnNoData, IDI_Opcode.CleanEvict, IDI_Opcode.CleanEvictNoInvalidate, IDI_Opcode.UcRdF, IDI_Opcode.DirtyEvict])
        # rbw.Guard(opcode in [IDI_Opcode.RdOwnNoData, IDI_Opcode.DirtyEvict])
        rbw.Guard(opcode in [IDI_Opcode.RdOwnNoData, IDI_Opcode.CLWB])
        # rbw.Guard(opcode in [IDI_Opcode.RdAny])
        rbw.Guard(cfg.mufasa_mode or cache_near)
        self.IDICAgent[idx].new_request(opcode, address, selfsnp, cache_near)

    @rbw.Rule(htid=cfg.HTID, choice=rbw.Boolean) #, c2c=rbw.Boolean)
    def hbo_sf_lookup_phase(self, htid:cfg.HTID, choice:rbw.Boolean): #, c2c:rbw.Boolean):
        self.hbo.SF_lookup_phase(htid, choice) #, c2c)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_early_MFS_lookup_phase(self, htid:cfg.HTID):
        self.hbo.early_MFS_lookup_phase(htid)

    @rbw.Rule(htid=cfg.HTID, id=cfg.IDICAgents) #, snpse_bias=rbw.Boolean)
    def hbo_send_snoop_to_idicagent(self, htid:cfg.HTID, id:cfg.IDICAgents): #, snpse_bias:rbw.Boolean):
        self.hbo.send_snoop_to_idicagent(htid, id) #, snpse_bias)

    @rbw.Rule(agent=cfg.IDICAgents, idx=cfg.Snoopq_sz, bias=rbw.Range(3))
    def idicagent_compute_snoop_response(self, agent:cfg.IDICAgents, idx:cfg.Snoopq_sz, bias:rbw.Range(3)):
       self.IDICAgent[agent].compute_snoop_response(idx, bias)

    @rbw.Rule(agent=cfg.IDICAgents, idx=cfg.Snoopq_sz)
    def idicagent_send_snoop_response(self, agent:cfg.IDICAgents, idx:cfg.Snoopq_sz):
       self.IDICAgent[agent].send_snoop_response(idx)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_send_early_response_to_idicagent(self, htid:cfg.HTID):
        self.hbo.send_early_response_to_idicagent(htid)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_late_mufasa_lookup_phase(self, htid:cfg.HTID):
        self.hbo.late_mufasa_lookup_phase(htid)

    @rbw.Rule(htid=cfg.HTID) #, alloc_hint=rbw.Boolean)
    def hbo_mufasa_alloc_and_update(self, htid:cfg.HTID): #, alloc_hint:rbw.Boolean):
        self.hbo.mufasa_alloc_and_update(htid) #, alloc_hint)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_send_late_response_to_idicagent(self, htid:cfg.HTID):
        self.hbo.send_late_response_to_idicagent(htid)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_send_data_to_idicagent(self, htid:cfg.HTID):
        self.hbo.send_data_to_idicagent(htid)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_release_tractor_entry(self, htid:cfg.HTID):
        self.hbo.release_tractor_entry(htid)

    @rbw.Rule(agent=cfg.IDICAgents, index=cfg.CHANNEL_SIZE)
    def link_send_A2FReq_packet(self,agent:cfg.IDICAgents, index:cfg.CHANNEL_SIZE):
        self.idiclink[agent].send_A2FReq_packet(index)

    @rbw.Rule(agent=cfg.IDICAgents, index=cfg.CHANNEL_SIZE)
    def link_send_A2FResp_packet(self, agent:cfg.IDICAgents, index:cfg.CHANNEL_SIZE):
        self.idiclink[agent].send_A2FResp_packet(index)

    @rbw.Rule(agent=cfg.IDICAgents, index=cfg.CHANNEL_SIZE)
    def link_send_A2FData_packet(self, agent:cfg.IDICAgents, index:cfg.CHANNEL_SIZE):
        self.idiclink[agent].send_A2FData_packet(index)

    @rbw.Rule(agent=cfg.IDICAgents, index=cfg.CHANNEL_SIZE)
    def link_send_F2AReq_packet(self,agent:cfg.IDICAgents, index:cfg.CHANNEL_SIZE):
        self.idiclink[agent].send_F2AReq_packet(index)

    @rbw.Rule(agent=cfg.IDICAgents, index=cfg.CHANNEL_SIZE)
    def link_send_F2AResp_packet(self,agent:cfg.IDICAgents, index:cfg.CHANNEL_SIZE):
        rbw.Guard(index < self.idiclink[agent].F2AResp.count)
        ### clarify: M state agent sends CLFlush_OPT / CLWB, M state agent sends 
        # first check is added because : for UCRdF, GO-I is in flight, while cache is in M state, and now another agents gets E state and modifies line, then aux data need not be updated
        no_other_agent_is_in_M_state : bool = True
        way_found : bool = False
        hit_way : cfg.MFS_WAYS
        for n in cfg.IDICAgents:
            if(n!=agent and
                self.IDICAgent[n].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].state in [CacheState.M]):
                no_other_agent_is_in_M_state = False
        for n in cfg.UPIAgents:
            if(self.UPIAgent[n].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].state in [CacheState.M]):
                no_other_agent_is_in_M_state = False
        # if(((self.idiclink[agent].F2AResp.pkts[index].packet.opcode==IDI_Opcode.GO
        #         and self.idiclink[agent].F2AResp.pkts[index].packet.cachestate==CacheState.I)
        #     or self.idiclink[agent].F2AResp.pkts[index].packet.opcode==IDI_Opcode.FastGO)
        #    and self.IDICAgent[agent].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].state==CacheState.M
        #    and self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].opcode not in [IDI_Opcode.ClrMonitor, IDI_Opcode.PrefetchtoSysCache]
        #    and no_other_agent_is_in_M_state):
        #     for way in cfg.MFS_WAYS:
        #         if(self.hbo.mufasa[way].valid
        #            and self.hbo.mufasa[way].address==self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address):
        #             way_found = True
        #             hit_way = way
        #     if(cfg.mufasa_mode
        #        and way_found
        #        and self.hbo.mufasa[hit_way].state==MFSState.M):
        #         for word in cfg.Word:
        #             self.aux.update_data(self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address, word, self.hbo.mufasa[hit_way].data[word])
        #     else:
        #         for word in cfg.Word:
        #             self.aux.update_data(self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address, word, self.hbo.mem[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address][word])
        # if(self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].opcode in [IDI_Opcode.ItoMWr, IDI_Opcode.WOWrInv, IDI_Opcode.WOWrInvF, IDI_Opcode.WrInv, IDI_Opcode.MemWr]):
        #     if(self.IDICAgent[agent].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].state==CacheState.M):
        #         way_found = False
        #         # hit_way : cfg.MFS_WAYS
        #         for way in cfg.MFS_WAYS:
        #             if(self.hbo.mufasa[way].valid
        #             and self.hbo.mufasa[way].address==self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address):
        #                 way_found = True
        #                 hit_way = way
        #         if(cfg.mufasa_mode
        #         and way_found
        #         and self.hbo.mufasa[hit_way].state==MFSState.M):
        #             for word in cfg.Word:
        #                 self.aux.update_data(self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address, word, self.hbo.mufasa[hit_way].data[word])
        #         else:
        #             for word in cfg.Word:
        #                 self.aux.update_data(self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address, word, self.hbo.mem[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address][word])
        
        ### merging data in case of writepull and already state is M
        if(self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].opcode in [IDI_Opcode.WOWrInv, IDI_Opcode.WrInv]):
            if(self.IDICAgent[agent].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].state==CacheState.M):
                for word in cfg.Word:
                    if(self.IDICAgent[agent].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].be[word]):
                        self.buffer_be[word] = True
                        self.idic_buffer[word] = self.IDICAgent[agent].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].data[word]
        self.idiclink[agent].send_F2AResp_packet(index)

    @rbw.Rule(agent=cfg.IDICAgents, index=cfg.CHANNEL_SIZE)
    def link_send_F2AData_packet(self, agent:cfg.IDICAgents, index:cfg.CHANNEL_SIZE):
        self.idiclink[agent].send_F2AData_packet(index)

    @rbw.Rule(agent=cfg.IDICAgents,rtid=cfg.RTID)    ### note: separated to identify group end in MSC code
    def agent_release_cq_entry(self, agent:cfg.IDICAgents, rtid:cfg.RTID):
       self.IDICAgent[agent].release_cq_entry(rtid)

    # @rbw.Rule(htid=cfg.HTID, pullordrop=rbw.Boolean)
    # def hbo_send_writepull_to_idicagent(self, htid:cfg.HTID, pullordrop:rbw.Boolean):
    #     self.hbo.send_writepull_to_idicagent(htid, pullordrop)

    @rbw.Rule(htid=cfg.HTID, id=cfg.UPIAgents)
    def hbo_send_snoop_to_upiagent(self, htid:cfg.HTID, id:cfg.UPIAgents):
        self.hbo.send_snoop_to_upiagent(htid, id)

    @rbw.Rule(agent=cfg.UPIAgents, index=cfg.CHANNEL_SIZE)
    def ulink_send_HASnp_packet(self,agent:cfg.UPIAgents, index:cfg.CHANNEL_SIZE):
        self.santa[agent].send_HASnp_packet(index)


    @rbw.Rule(agent=cfg.UPIAgents, idx=cfg.Address, resp_opcode=UPI_Opcode) # choice=rbw.Range(4))
    def upiagent_process_snoop_entry(self, agent:cfg.UPIAgents, idx:cfg.Address, resp_opcode:UPI_Opcode): # choice:rbw.Range(4)):
       self.UPIAgent[agent].process_snoop_entry(idx, resp_opcode) #choice)


    @rbw.Rule(agent=cfg.UPIAgents, index=cfg.CHANNEL_SIZE)
    def ulink_send_CAResp_packet(self, agent:cfg.UPIAgents, index:cfg.CHANNEL_SIZE):
        self.santa[agent].send_CAResp_packet(index)

    def is_buffer_full(self) -> bool:
        for word in cfg.Word:
            if(not self.buffer_be[word]):
                return False
        return True

    def is_buffer_empty(self) -> bool:
        for word in cfg.Word:
            if(self.buffer_be[word]):
                return False
        return True

    @rbw.Rule(agent=cfg.IDICAgents, index=cfg.RTID)
    def agent_send_write_data(self, agent:cfg.IDICAgents, index:cfg.RTID):
        rbw.Guard(self.IDICAgent[agent].cq[index].valid)
                #   and not self.IDICAgent[agent].cq[index].data_sent
                #   and self.IDICAgent[agent].cq[index].resp_recvd)
        rbw.Guard(not self.IDICAgent[agent].cq[index].opcode in [IDI_Opcode.ItoMWr, IDI_Opcode.WOWrInvF, IDI_Opcode.MemWr]
                  or self.is_buffer_full())
        self.IDICAgent[agent].send_write_data(index, self.idic_buffer, self.buffer_be)
        if(self.IDICAgent[agent].cq[index].opcode in [IDI_Opcode.ItoMWr, IDI_Opcode.WOWrInv, IDI_Opcode.WOWrInvF, IDI_Opcode.WrInv, IDI_Opcode.MemWr]):
        #     if(self.IDICAgent[agent].cache[self.IDICAgent[agent].cq[index].address].state==CacheState.M):
        #         way_found : bool = False
        #         hit_way : cfg.MFS_WAYS
        #         for way in cfg.MFS_WAYS:
        #             if(self.hbo.mufasa[way].valid
        #             and self.hbo.mufasa[way].address==self.IDICAgent[agent].cq[index].address):
        #                 way_found = True
        #                 hit_way = way
        #         if(cfg.mufasa_mode
        #         and way_found
        #         and self.hbo.mufasa[hit_way].state==MFSState.M):
        #             for word in cfg.Word:
        #                 self.aux.update_data(self.IDICAgent[agent].cq[index].address, word, self.hbo.mufasa[hit_way].data[word])
        #         else:
        #             for word in cfg.Word:
        #                 self.aux.update_data(self.IDICAgent[agent].cq[index].address, word, self.hbo.mem[self.IDICAgent[agent].cq[index].address][word])
            for word in cfg.Word:
                if(self.buffer_be[word]):
                    self.aux.update_data(self.IDICAgent[agent].cq[index].address, word, self.idic_buffer[word])
        self.reset_buffer()

    @rbw.Rule(agent=cfg.IDICAgents, address=cfg.Address, word = cfg.Word, data=cfg.Data)
    def idicagent_modify_cacheline(self, agent:cfg.IDICAgents, address:cfg.Address, word:cfg.Word, data:cfg.Data):
        self.IDICAgent[agent].modify_cacheline(address, word, data)
        self.aux.update_data(address, word, data)

    @rbw.Rule(agent=cfg.IDICAgents, index=cfg.Snoopq_sz)
    def idicagent_send_snoop_data(self, agent:cfg.IDICAgents, index:cfg.Snoopq_sz):
        self.IDICAgent[agent].send_snoop_data(index)

    @rbw.Rule(idx=cfg.UPIAgents, address=cfg.Address, opcode=UPI_Opcode, alloc_hint=rbw.Boolean)
    def ca_send_new_request(self, idx:cfg.UPIAgents, address:cfg.Address, opcode:UPI_Opcode, alloc_hint:rbw.Boolean):
        # rbw.Guard(idx==0)
        # rbw.Guard(idx==2)
        rbw.Guard(idx==0 or idx==1)
        rbw.Guard(cfg.mufasa_mode or ( alloc_hint))  ## needed for mufasa
        # rbw.Guard(opcode in [UPI_Opcode.RdDataMig, UPI_Opcode.RdInvOwn, UPI_Opcode.WbMtoI])
        # rbw.Guard(opcode in [UPI_Opcode.RdData, UPI_Opcode.WbMtoI]
        #           and not alloc_hint)
        # rbw.Guard(opcode in [UPI_Opcode.RdCode, UPI_Opcode.RdData, UPI_Opcode.RdDataMig, UPI_Opcode.RdInvOwn, UPI_Opcode.InvXtoI, UPI_Opcode.InvItoE, UPI_Opcode.RdInv, UPI_Opcode.InvItoM, UPI_Opcode.RdCur, UPI_Opcode.WbMtoI, UPI_Opcode.WbMtoS, UPI_Opcode.WbMtoE, UPI_Opcode.WbEtoI])
        # rbw.Guard(opcode in [UPI_Opcode.RdDataMig, UPI_Opcode.InvItoE, UPI_Opcode.WbMtoI])
        rbw.Guard(opcode in [UPI_Opcode.RdData, UPI_Opcode.InvItoE, UPI_Opcode.WbMtoS])
        # rbw.Guard(opcode in [UPI_Opcode.RdDataMig, UPI_Opcode.RdInvOwn, UPI_Opcode.RdCur, UPI_Opcode.WbMtoI, UPI_Opcode.WbMtoS, UPI_Opcode.WbMtoE, UPI_Opcode.WbEtoI])
        # rbw.Guard(opcode in [UPI_Opcode.RdDataMig, UPI_Opcode.RdInvOwn, UPI_Opcode.RdCur, UPI_Opcode.WbMtoI])
        # rbw.Guard(opcode in [UPI_Opcode.RdDataMig, UPI_Opcode.RdInvOwn, UPI_Opcode.WbMtoI])
        # rbw.Guard(opcode in [UPI_Opcode.RdDataMig, UPI_Opcode.RdInvOwn, UPI_Opcode.RdCur])
        # rbw.Guard(opcode in [UPI_Opcode.InvItoE, UPI_Opcode.WbMtoE])
        # rbw.Guard(opcode in [UPI_Opcode.RdData])
        self.UPIAgent[idx].send_new_request(address, opcode, alloc_hint)

    @rbw.Rule(agent=cfg.UPIAgents, index=cfg.CHANNEL_SIZE)
    def ulink_send_CAReq_packet(self, agent:cfg.UPIAgents, index:cfg.CHANNEL_SIZE):
        self.santa[agent].send_CAReq_packet(index)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_send_response_to_upiagent(self, htid:cfg.HTID):
        self.hbo.send_response_to_upiagent(htid)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_send_data_to_upiagent(self, htid:cfg.HTID):
        self.hbo.send_data_to_upiagent(htid)

    @rbw.Rule(agent=cfg.UPIAgents, index=cfg.CHANNEL_SIZE)
    def ulink_send_HAResp_packet(self, agent:cfg.UPIAgents, index:cfg.CHANNEL_SIZE):
        self.santa[agent].send_HAResp_packet(index)

    @rbw.Rule(agent=cfg.UPIAgents, index=cfg.CHANNEL_SIZE)
    def ulink_send_MCResp_packet(self, agent:cfg.UPIAgents, index:cfg.CHANNEL_SIZE):
        self.santa[agent].send_MCResp_packet(index)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_release_tractor_uentry(self, htid:cfg.HTID):
        self.hbo.release_tractor_uentry(htid)

    @rbw.Rule(agent=cfg.UPIAgents, address=cfg.Address, word = cfg.Word, data=cfg.Data)
    def upiagent_modify_cacheline(self, agent:cfg.UPIAgents, address:cfg.Address, word:cfg.Word, data:cfg.Data):
        self.UPIAgent[agent].ca_modify_cacheline(address, word, data)
        self.aux.update_data(address, word, data)

    @rbw.Rule(agent=cfg.UPIAgents, address=cfg.Address, cacheOp=CacheOp)
    def downgrade_cacheline(self, agent:cfg.UPIAgents, address:cfg.Address, cacheOp:CacheOp):
        self.UPIAgent[agent].ca_downgrade_cacheline(address, cacheOp)

    @rbw.Rule(agent=cfg.UPIAgents, address=cfg.Address)
    def ca_request_fwd_conflict(self, agent:cfg.UPIAgents, address:cfg.Address):
        self.UPIAgent[agent].request_fwd_conflict(address)

    @rbw.Rule(agent=cfg.UPIAgents, index=cfg.CHANNEL_SIZE)
    def ulink_send_CAWb_packet(self, agent:cfg.UPIAgents, index:cfg.CHANNEL_SIZE):
        self.santa[agent].send_CAWb_packet(index)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_send_fwd_response(self, htid:cfg.HTID):
        self.hbo.send_fwd_response(htid)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_send_response_for_ClrMonitor(self, htid:cfg.HTID):
        self.hbo.send_response_for_clrmonitor(htid)

    @rbw.Rule(agent=cfg.IDICAgents, rtid=cfg.RTID)
    def idicagent_send_ack_response(self, agent:cfg.IDICAgents, rtid:cfg.RTID):
        self.IDICAgent[agent].send_ack_response(rtid)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_send_memory_request(self, htid:cfg.HTID):
        self.hbo.send_memory_request(htid)

    @rbw.Rule(mctid=cfg.MEM_TORID)
    def hbo_recv_memory_response(self, mctid:cfg.MEM_TORID):
        self.hbo.send_memory_response(mctid)

    @rbw.Rule(htid=cfg.HTID) #, alloc_hint=rbw.Boolean)
    def move_to_memory_domain(self, htid:cfg.HTID): #, alloc_hint:rbw.Boolean):
        self.hbo.move_to_memory_domain(htid) #, alloc_hint)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_send_fastgo_response_to_idicagent(self, htid:cfg.HTID):
        self.hbo.send_fastgo_response_to_idicagent(htid)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_send_parallel_mem_read_request(self, htid:cfg.HTID):
        self.hbo.send_parallel_mem_read_request(htid)

    @rbw.Rule(htid=cfg.HTID)
    def hbo_mufasa_early_read(self, htid:cfg.HTID):
        self.hbo.mufasa_early_read(htid)

    @rbw.Invariant
    def cache_state_consistency(self) -> bool:
        ongoing_req:bool = False
        for addr in cfg.Address:
            # flag : bool = False
            # for agent in cfg.FTSEXCAgents:
            #     for rtid in cfg.RTID:
            #         if (self.FTSAgent_i[agent].cq[rtid].valid 
            #             andself.IDICAgent[agent].cq[rtid].address==addr):
            #             flag = True
            # if(not flag):
            count_ME : cfg.Agent_countp1
            count_S : cfg.Agent_countp1
            count_ME = 0
            count_S = 0
            for idx in cfg.HTID:
                if(self.hbo.tractor[idx].valid
                    and self.hbo.tractor[idx].address==addr
                    and (self.hbo.tractor[idx].sf_lookup_done
                         or self.hbo.tractor[idx].resp_sent
                         or self.hbo.tractor[idx].data_sent)):
                    ongoing_req = True
            for id in cfg.IDICAgents:
                if(self.idiclink[id].F2AResp.count > 0):
                    ongoing_req = True
                # if(not ongoing_req):
                if(self.IDICAgent[id].cache[addr].state in [CacheState.M, CacheState.E]):
                    count_ME = count_ME + 1
                elif(self.IDICAgent[id].cache[addr].state in [CacheState.S]):
                    count_S = count_S + 1
            for id in cfg.UPIAgents:
                # if(self.santa[id].HAResp.count > 0):
                #     ongoing_req = True
                if(self.UPIAgent[id].cache[addr].state in [CacheState.M, CacheState.E]):
                    count_ME = count_ME + 1
                elif(self.UPIAgent[id].cache[addr].state in [CacheState.S]):
                    count_S = count_S + 1
            if(not ongoing_req and ((count_ME > 0 and count_S > 0) or (count_ME > 1))):
                return False
            # way : cfg.MFS_WAYS
            # for id in cfg.MFS_WAYS:
            #     if(self.hbo.mufasa[id].valid
            #        and self.hbo.mufasa[id].address==addr
            #        and self.hbo.mufasa[id].state==MFSState.M):
            #         count_ME = count_ME + 1
            # if(not ongoing_req and ((count_ME > 1))):
            #     return False
        return True

    @rbw.Invariant
    def snoop_filter_cs_consistency(self) -> bool:
        ongoing_req:bool = False
        for addr in cfg.Address:
            for idx in cfg.HTID:
                if(self.hbo.tractor[idx].valid
                    and self.hbo.tractor[idx].address==addr
                    and self.hbo.tractor[idx].sf_lookup_done):
                    ongoing_req = True
            for agent in cfg.IDICAgents:
                # for idx in cfg.RTID:
                #     if (self.IDICAgent[agent].cq[idx].valid
                #         and self.IDICAgent[agent].cq[idx].address==addr):
                #         ongoing_req = True
                if(self.idiclink[agent].F2AResp.count > 0):
                    ongoing_req = True
            for agent in cfg.UPIAgents:
                if(self.santa[agent].HAResp.count > 0):
                    ongoing_req = True
            tag_match : bool = False
            way : cfg.SF_WAYS
            for id in cfg.SF_WAYS:
                if(self.hbo.sf[id].valid
                   and self.hbo.sf[id].address==addr):
                    tag_match = True
                    way = id
            if(not ongoing_req):
                if(tag_match):
                    if(self.hbo.sf[way].CV_format):
                        for id in range(cfg.NUM_SOTFTSIDICAgents, cfg.NUM_SOTFTSIDICAgents+cfg.NUM_EXCIDICAgents):
                            if(self.hbo.sf[way].owner_id != id
                            and self.IDICAgent[id].cache[addr].state not in [CacheState.I]):
                                return False
                        for id in cfg.SOTFTSIDICAgents:
                            if(self.hbo.sf[way].CV_bits_idic[id]):
                                return False
                            if(self.IDICAgent[id].cache[addr].state not in [CacheState.I]):
                                return False
                        for id in range(cfg.NUM_SOTFTSUPIAgents, cfg.NUM_SOTFTSUPIAgents+cfg.NUM_EXCUPIAgents):
                            if(self.hbo.sf[way].owner_id != id
                            and self.UPIAgent[id].cache[addr].state not in [CacheState.I]):
                                return False
                        for id in cfg.SOTFTSUPIAgents:
                            if(self.hbo.sf[way].CV_bits_upi[id]):
                                return False
                            if(self.UPIAgent[id].cache[addr].state not in [CacheState.I]):
                                return False
                    else:
                        for id in range(cfg.NUM_SOTIDICAgents, cfg.NUM_SOTIDICAgents+cfg.NUM_FTSIDICAgents):
                            if(not self.hbo.sf[way].CV_bits_idic[id]
                            and self.IDICAgent[id].cache[addr].state not in [CacheState.I]):
                                return False
                        for id in range(cfg.NUM_SOTFTSIDICAgents, cfg.NUM_SOTFTSIDICAgents+cfg.NUM_EXCIDICAgents):
                            if(self.IDICAgent[id].cache[addr].state not in [CacheState.I]):
                                return False
                        for id in range(cfg.NUM_SOTUPIAgents, cfg.NUM_SOTUPIAgents+cfg.NUM_FTSUPIAgents):
                            if(not self.hbo.sf[way].CV_bits_upi[id]
                            and self.UPIAgent[id].cache[addr].state not in [CacheState.I]):
                                return False
                        for id in range(cfg.NUM_SOTFTSUPIAgents, cfg.NUM_SOTFTSUPIAgents+cfg.NUM_EXCUPIAgents):
                            if(self.UPIAgent[id].cache[addr].state not in [CacheState.I]):
                                return False
        return True

    @rbw.Invariant
    def data_consistency(self) -> bool:
        """A cache with non-I state must always have the latest written value of the data.
        non-modified data is always the same as what is stored in memory.
        If a cache has a readable copy of the line, its data must be the
        same as the latest data value. We update the latest data value
        whenever a device writes to its caches.
        """
        ### the following loop checks if non-I state device has latest data i.e. stored in aux memory
        ### it also checks if there is M state in any device
        for addr in cfg.Address:
            ### Clarify: not checking data consistency when device has outstanding request e.g. CleanEvictNoData from dev0, ItoMWr from dev1, host sends GO-I to dev0, sends WritePull to dev1, gets data from dev1, dev1 completes req, host releases tor entry for both, but dev0 has not yet recvd GO-I, so data inconsistency
            # for agent in cfg.IDICAgents:
            #     for word in cfg.Word:
            #         if(
            #             self.IDICAgent[agent].cache[addr].state != CacheState.I and 
            #             self.IDICAgent[agent].cache[addr].be[word] and
            #             self.IDICAgent[agent].cache[addr].data[word] != self.aux.latest_data[addr][word] 
            #             ):
            #             return False
            # for agent in cfg.UPIAgents:
            #     for word in cfg.Word:
            #         if(
            #             self.UPIAgent[agent].cache[addr].state != CacheState.I and 
            #             self.UPIAgent[agent].cache[addr].be[word] and
            #             self.UPIAgent[agent].cache[addr].data[word] != self.aux.latest_data[addr][word] 
            #             ):
            #             return False

            no_device_in_M : bool = True
            for n in cfg.IDICAgents:
                if(self.IDICAgent[n].cache[addr].state in [CacheState.M]):
                    no_device_in_M = False
            for n in cfg.UPIAgents:
                if(self.UPIAgent[n].cache[addr].state in [CacheState.M]):
                    no_device_in_M = False
            way : cfg.MFS_WAYS
            for id in cfg.MFS_WAYS:
                if(self.hbo.mufasa[id].valid
                   and self.hbo.mufasa[id].address==addr
                   and self.hbo.mufasa[id].state==MFSState.M):
                    no_device_in_M = False
            active_req_in_tor : bool = False
            for torid in cfg.HTID:
                if (self.hbo.tractor[torid].valid
                    and self.hbo.tractor[torid].address==addr 
                    and (self.hbo.tractor[torid].sf_lookup_done
                         or self.hbo.tractor[torid].resp_sent
                         or self.hbo.tractor[torid].data_sent)
                    ):
                    active_req_in_tor = True
            ongoing_req : bool = False
            for agent in cfg.UPIAgents:
                # if(self.santa[agent].HAResp.count > 0):   ###not enough when Wb is sent but npt recvd by hbo
                for torid in cfg.RTID:
                    if (self.UPIAgent[agent].tor[torid].state != RTID_STATE.Idle
                        and self.UPIAgent[agent].tor[torid].address==addr 
                        ):
                        ongoing_req = True
            ### case: hbo sent GO_M and modified data, released tractor entry but data and resp are at link, it fails without the following ongoing_req check.
            for agent in cfg.IDICAgents:
                for cqid in cfg.RTID:
                    if (self.IDICAgent[agent].cq[cqid].valid
                        and self.IDICAgent[agent].cq[cqid].address==addr 
                        ):
                        ongoing_req = True
            if(no_device_in_M and not active_req_in_tor and not ongoing_req):
                for word in cfg.Word:
                    if(self.hbo.mem[addr][word] != self.aux.latest_data[addr][word]):
                        return False
            ## following check is guarded by no ongoing req, reason: if an IDIC agent is in M state and send UcRDF, suppose GO-I is in flight for UcRdF, then meanwhile HBo can dealloc tractor of UcRdF and start processing new request and can even provide E/M/S access to any other request
            if(not ongoing_req):
                for agent in cfg.IDICAgents:
                    for word in cfg.Word:
                        if(
                            self.IDICAgent[agent].cache[addr].state != CacheState.I and 
                            self.IDICAgent[agent].cache[addr].be[word] and
                            self.IDICAgent[agent].cache[addr].data[word] != self.aux.latest_data[addr][word] 
                            ):
                            return False
                for agent in cfg.UPIAgents:
                    for word in cfg.Word:
                        if(
                            self.UPIAgent[agent].cache[addr].state != CacheState.I and 
                            self.UPIAgent[agent].cache[addr].be[word] and
                            self.UPIAgent[agent].cache[addr].data[word] != self.aux.latest_data[addr][word] 
                            ):
                            return False

        return True

    @rbw.Invariant
    def never_snoop_requestor_UPIAgent(self) -> bool:
        for id in cfg.HTID:
            if(self.hbo.tractor[id].valid
                and self.hbo.tractor[id].protocol==Protocol.UPI
                and self.hbo.tractor[id].sf_lookup_done
                and self.hbo.tractor[id].upi_snoop_target[self.hbo.tractor[id].agent_id]
                ):
                return False
        return True

    @rbw.Invariant
    def no_selfsnp_for_IDIC_agent_in_certain_opcodes(self) -> bool:
        for id in cfg.HTID:
            if(self.hbo.tractor[id].valid
                and self.hbo.tractor[id].protocol==Protocol.IDIC
                and self.hbo.tractor[id].sf_lookup_done
                and self.hbo.tractor[id].iopcode in [IDI_Opcode.CleanEvict, IDI_Opcode.CleanEvictNoInvalidate, IDI_Opcode.DirtyEvict, IDI_Opcode.DirtyEvictNoInv, IDI_Opcode.CleanEvictNoData] ##, IDI_Opcode.RdCurr_ns, IDI_Opcode.PrefetchToSysCache, IDI_Opcode.ClrMonitor]
                and self.hbo.tractor[id].idic_snoop_target[self.hbo.tractor[id].agent_id]
                ):
                return False
        return True

    @rbw.Invariant
    def snoop_target_vs_snpneeded(self) -> bool:
        one_target : bool = False
        for id in cfg.HTID:
            if(self.hbo.tractor[id].valid
                and self.hbo.tractor[id].sf_lookup_done
                and not self.hbo.tractor[id].snpneeded):
                for agent in cfg.IDICAgents:
                    if(self.hbo.tractor[id].idic_snoop_target[agent]):
                        return False
                for agent in cfg.UPIAgents:
                    if(self.hbo.tractor[id].upi_snoop_target[agent]):
                        return False
            elif(self.hbo.tractor[id].valid
                and self.hbo.tractor[id].sf_lookup_done
                and self.hbo.tractor[id].snpneeded):
                for agent in cfg.IDICAgents:
                    if(self.hbo.tractor[id].idic_snoop_target[agent]):
                        one_target = True
                for agent in cfg.UPIAgents:
                    if(self.hbo.tractor[id].upi_snoop_target[agent]):
                        one_target = True
                return one_target
        return True

if __name__ == "__main__":
    # interact = Interact(NVL)
    # interact.cmdloop()
    write_murphi(NVL)
    