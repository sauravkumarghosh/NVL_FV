import rainbow as rbw

class Config(rbw.Globals):

    NUM_SOTUPIAgents = rbw.Const(default=1)
    SOTUPIAgents = rbw.Range(NUM_SOTUPIAgents)
    NUM_FTSUPIAgents = rbw.Const(default=1)
    # FTSUPIAgents = rbw.Range(NUM_FTSUPIAgents)
    NUM_EXCUPIAgents = rbw.Const(default=1)
    # EXCUPIAgents = rbw.Range(NUM_EXCUPIAgents)
    MAX_UPIAgentID = rbw.Const(default=3)   ## summation of three params above    ## V: try lambda function
    UPIAgents = rbw.Range(MAX_UPIAgentID)

    NUM_SOTIDICAgents = rbw.Const(default=1)
    SOTIDICAgents = rbw.Range(NUM_SOTIDICAgents)
    NUM_FTSIDICAgents = rbw.Const(default=1)
    # FTSIDICAgents = rbw.Range(NUM_FTSIDICAgents)
    NUM_EXCIDICAgents = rbw.Const(default=1)
    # EXCIDICAgents = rbw.Range(NUM_EXCIDICAgents)
    MAX_IDICAgentID = rbw.Const(default=3)   ## summation of three params above    ## V: try lambda function
    IDICAgents = rbw.Range(MAX_IDICAgentID)
    ## if NUM_SOTIDICAgents = 1, NUM_FTSIDICAgents = 2, NUM_EXCIDICAgents = 1
    ## IDICAgent[0] : SOTIDICAgent
    ## IDICAgent[1] : FTSIDICAgent
    ## IDICAgent[2] : FTSIDICAgent
    ## IDICAgent[3] : EXCIDICAgent
    # todo S: try to change baseline from 0 to 1

    MAX_AgentID = rbw.Const(default=3)  ## max of {MAX_UPIAgentID, MAX_IDICAgentID}
    Agents = rbw.Range(MAX_AgentID)
    # MAX_AgentIDp1 = rbw.Const(default=MAX_AgentID+1)
    # Agentsp1 = rbw.Range(MAX_AgentIDp1)

    Agent_count = rbw.Const(default=6)  ## summation of MAX_UPIAgentID, MAX_IDICAgentID
    Agent_countp1 = rbw.Range(Agent_count+1)

    NUM_SOTFTSUPIAgents = rbw.Const(default=NUM_SOTUPIAgents+NUM_FTSUPIAgents)
    SOTFTSUPIAgents = rbw.Range(NUM_SOTFTSUPIAgents)
    NUM_SOTFTSIDICAgents = rbw.Const(default=NUM_SOTIDICAgents + NUM_FTSIDICAgents)
    SOTFTSIDICAgents = rbw.Range(NUM_SOTFTSIDICAgents)

    # NUM_SOTAgents = rbw.Const(default=1)
    # SOTAgents = rbw.Range(NUM_SOTAgents)
    # NUM_FTSAgents = rbw.Const(default=1)
    # FTSAgents = rbw.Range(NUM_FTSAgents)
    # NUM_EXCAgents = rbw.Const(default=1)
    # EXCAgents = rbw.Range(NUM_EXCAgents)
    # NUM_SOTFTSAgents = rbw.Const(default=NUM_SOTAgents + NUM_FTSAgents)
    # SOTFTSAgents = rbw.Range(NUM_SOTFTSAgents)
    # NUM_SOTFTSAgentsp1 = rbw.Const(default=NUM_SOTFTSAgents + 1)
    # SOTFTSAgentsp1 = rbw.Range(NUM_SOTFTSAgentsp1)

    
    # NUM_FTSEXCAgents = rbw.Const(default=NUM_FTSAgents + NUM_EXCAgents)
    # FTSEXCAgents = rbw.Range(NUM_FTSEXCAgents)

    # MAX_EXCAgent = rbw.Const(default=1) ## max of EXCUPI and EXCIDIC
    # Owners = rbw.Range(MAX_EXCAgent)

    # MAX_Agent = rbw.Const(default=1) ## max of all three
    # AgentID = rbw.Range(MAX_Agent)
    # NUM_CAs = rbw.Const(default=1)
    # CRNID = rbw.Range(NUM_CAs)

    # NUM_AllAgents = rbw.Const(default = NUM_SOTFTSAgents + NUM_EXCAgents)
    # # NUM_AllAgents = rbw.Const(3)
    # AllAgents = rbw.Range(NUM_AllAgents)

    # NUM_AllAgentsp1 = rbw.Const(default=NUM_AllAgents+1)
    # AllAgentsp1 = rbw.Range(NUM_AllAgentsp1)

    MAX_RTID = rbw.Const(default=1)     ## max number of outstanding requests from a CA
    RTID = rbw.Range(MAX_RTID)

    MAX_HTID = rbw.Const(default=2) ### minimum 2: last one reserved for WB class of UPI    ## max outstanding request in HBo
    HTID = rbw.Range(MAX_HTID)

    NUM_ADDRESS = rbw.Const(default=1)
    Address = rbw.Range(NUM_ADDRESS)

    MAX_MON_SIZE = rbw.Const(default = 1) ## Address * active IDICAgents : Mon array {address, agent_id}
    MonitorSize = rbw.Range(MAX_MON_SIZE)

    NUM_WORD = rbw.Const(default=1) ## 1 Cache line has NUM_Word many indices, required to be increased to 2 while verifying partial opcodes
    NUM_DATA = rbw.Const(default=1) 
    Word = rbw.Range(NUM_WORD)
    Data = rbw.Range(NUM_DATA)
    Line = rbw.Array(Word, Data)
    BE = rbw.Array(Word, rbw.Boolean)

    MAX_SNOOPS = rbw.Const(default=1)
    Snoopq_sz = rbw.Range(MAX_SNOOPS)

    # # Link configuration. Should this be local to Link module?
    # #
    # # NUM_A2FReq - Maximum number of inflight packets on A2F Req channel
    # # NUM_F2AResp - Maximum number of inflight packets on F2A Resp channel
    # #
    NUM_A2FReq = rbw.Const(default=1)
    NUM_F2AResp = rbw.Const(default=1)
    NUM_F2AData = rbw.Const(default=1)

    NUM_F2AReq = rbw.Const(default=1)
    NUM_A2FResp = rbw.Const(default=1)
    NUM_A2FData = rbw.Const(default=1)


    NUM_CAReq = rbw.Const(default=1)    ## for buried cases, for single addresses more than 1 will be used, else it is useless
    NUM_CAWb = rbw.Const(default=1)     ## for single address 1 is enough
    NUM_CAResp = rbw.Const(default=1)
    NUM_HASnp = rbw.Const(default=1)    ## for single address 1 is enough
    NUM_HAResp = rbw.Const(default=1)   ## for Data and response from HBo to CA

    MAX_CHANNEL_SIZE = rbw.Const(default=1) ## we want to use max of above 6 parameters, for murphi support it is constant for now
    CHANNEL_SIZE = rbw.Range(MAX_CHANNEL_SIZE)

    CAAllowBuriedHitM = rbw.Const(default=False)    ## set to True if we want to have two outstanding requests from CA, WbMtoIPtl and one read case

    C2C_DISABLED = rbw.Const(default=False) ## for enabling cache 2 cache transfer ; this will be used in sf lookup to decide snoop opcode
    CAFwdFromS = rbw.Const(default=False)   ## CA can forward data to other CA even if it is in S state, applicable for only 0th UPI CA, used in CA to send the response when forward opcode comes

    # SOTUPIAgents = 0..-1
    # ranges:
    # 0..0
    # 1..n

    MAX_MEM_TXNID = rbw.Const(default=2)     ### unique transaction id for packets from HBo to MC, it can be tractor id or IFSA id therefore max of htids, ifa entries
    MEM_TXNID = rbw.Range(MAX_MEM_TXNID)

    MAX_MEM_TORID = rbw.Const(default=1)    ## outstanding mem controller requests : 1. special case to consider: parallel mem read is outstanding for a request in coh domain, mem wr is sent for mem domain request. But should not affect data invariant as coh domain request will squash this read and have another lookup
    MEM_TORID = rbw.Range(MAX_MEM_TORID)
    MEM_TORIDp1 = rbw.Range(MAX_MEM_TORID+1)

    MAX_IFA_ENTRIES = rbw.Const(default=1) ## need not be more than # addresses
    IFASize = rbw.Range(MAX_IFA_ENTRIES)

    ## switches
    mem_abstracted = rbw.Const(default=False) #rbw.Boolean()    ## if True, CXM is not enabled

    ## from section 17.4 H-Bo internal Registers in HAS
    prll_lkup_enabled = rbw.Const(default=True) 
    disable_early_mufasa_lkup = rbw.Const(default=False)
    disable_early_wrcmp_upiwb = rbw.Const(default=False)
    disable_early_wrcmp_other = rbw.Const(default=True)
    dont_go_m = rbw.Const(default=False)
    # enable_spec_memrd = rbw.Const(default=True) #False) ## remove as redundant : todo V done
    treat_flush_as_wrinv = rbw.Const(default=False)

    MAX_MFS_WAYS = rbw.Const(default=1)
    MFS_WAYS = rbw.Range(MAX_MFS_WAYS)

    MAX_SF_WAYS = rbw.Const(default=1)
    SF_WAYS = rbw.Range(MAX_MFS_WAYS)

    ## for optimizing snoop target in case SF state is invalid. If SOT CAS are not enabled i.e. can't generate requests then no need to snoop them. Need to add guards in generating requests as well for trivial errors
    IDIC_SOT_VALID = rbw.Const(default=False)   ## if IDIC SOT cannot request, then set it to False
    UPI_SOT_VALID = rbw.Const(default=True)
    
    mufasa_mode = rbw.Const(default=True)   ## this is to enable/disable mufasa

cfg = Config()
# cfg.mem_abstracted = True # False #True