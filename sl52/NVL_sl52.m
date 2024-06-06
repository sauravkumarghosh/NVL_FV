const
  NUM_SOTUPIAgents: 2;
  NUM_FTSUPIAgents: 1;
  NUM_EXCUPIAgents: 1;
  MAX_UPIAgentID: 4;
  NUM_SOTIDICAgents: 1;
  NUM_FTSIDICAgents: 1;
  NUM_EXCIDICAgents: 1;
  MAX_IDICAgentID: 3;
  MAX_AgentID: 4;
  Agent_count: 7;
  NUM_SOTFTSUPIAgents: 3;
  NUM_SOTFTSIDICAgents: 2;
  MAX_RTID: 1;
  MAX_HTID: 2;
  NUM_ADDRESS: 1;
  MAX_MON_SIZE: 1;
  NUM_WORD: 1;
  NUM_DATA: 2;
  MAX_SNOOPS: 1;
  NUM_A2FReq: 1;
  NUM_F2AResp: 1;
  NUM_F2AData: 1;
  NUM_F2AReq: 1;
  NUM_A2FResp: 1;
  NUM_A2FData: 1;
  NUM_CAReq: 1;
  NUM_CAWb: 1;
  NUM_CAResp: 1;
  NUM_HASnp: 1;
  NUM_HAResp: 1;
  MAX_CHANNEL_SIZE: 1;
  CAAllowBuriedHitM: False;
  C2C_DISABLED: False;
  CAFwdFromS: False;
  MAX_MEM_TXNID: 2;
  MAX_MEM_TORID: 1;
  MAX_IFA_ENTRIES: 1;
  mem_abstracted: False;
  prll_lkup_enabled: True;
  disable_early_mufasa_lkup: False;
  disable_early_wrcmp_upiwb: False;
  disable_early_wrcmp_other: True;
  dont_go_m: False;
  treat_flush_as_wrinv: False;
  MAX_MFS_WAYS: 1;
  MAX_SF_WAYS: 1;
  IDIC_SOT_VALID: False;
  UPI_SOT_VALID: True;
  mufasa_mode: True;
  MAX__1: 1;

type
  SOTUPIAgents: 0..1;
  UPIAgents: 0..3;
  SOTIDICAgents: 0..0;
  IDICAgents: 0..2;
  Agents: 0..3;
  Agent_countp1: 0..7;
  SOTFTSUPIAgents: 0..2;
  SOTFTSIDICAgents: 0..1;
  RTID: 0..0;
  HTID: 0..1;
  Address: 0..0;
  MonitorSize: 0..0;
  Word: 0..0;
  Data: 0..1;
  Line: array [Word] of Data;
  BE: array [Word] of boolean;
  Snoopq_sz: 0..0;
  CHANNEL_SIZE: 0..0;
  MEM_TXNID: 0..1;
  MEM_TORID: 0..0;
  MEM_TORIDp1: 0..1;
  IFASize: 0..0;
  MFS_WAYS: 0..0;
  SF_WAYS: 0..0;
Protocol : enum { Protocol__UPI, Protocol__IDIC };
IDI_Opcode : enum { IDI_Opcode__RdAny, IDI_Opcode__RdCurr, IDI_Opcode__RdOwn, IDI_Opcode__RdShared, IDI_Opcode__RdOwnNoData, IDI_Opcode__ItoMWr, IDI_Opcode__CLFlush, IDI_Opcode__CLFlush_OPT, IDI_Opcode__CleanEvict, IDI_Opcode__CleanEvictNoInvalidate, IDI_Opcode__DirtyEvict, IDI_Opcode__DirtyEvictNoInv, IDI_Opcode__CleanEvictNoData, IDI_Opcode__WOWrInv, IDI_Opcode__WOWrInvF, IDI_Opcode__WrInv, IDI_Opcode__RdCurr_ns, IDI_Opcode__SetMonitor, IDI_Opcode__MemWr, IDI_Opcode__CLWB, IDI_Opcode__UcRdF, IDI_Opcode__PrefetchtoSysCache, IDI_Opcode__ClrMonitor, IDI_Opcode__GO, IDI_Opcode__GoWritePull, IDI_Opcode__FastGO, IDI_Opcode__ExtCmp, IDI_Opcode__GoWritePullDrop, IDI_Opcode__FastGOWritePull, IDI_Opcode__WritePull, IDI_Opcode__GOAck, IDI_Opcode__Data, IDI_Opcode__SnpData, IDI_Opcode__SnpCode, IDI_Opcode__SnpInv, IDI_Opcode__SnpCur, IDI_Opcode__BackInv, IDI_Opcode__RspSHitSE, IDI_Opcode__RspIHitI, IDI_Opcode__RspIHitSE, IDI_Opcode__RspVHitV, IDI_Opcode__RspVFwdV, IDI_Opcode__RspIFwdM, IDI_Opcode__RspSFwdM };
Coh_Op : enum { Coh_Op__Get_SE, Coh_Op__Get_E, Coh_Op__Get_S, Coh_Op__NoInvSnp_RdCur, Coh_Op__Wr_Inv, Coh_Op__Flush, Coh_Op__WB_2I, Coh_Op__No_Coh_Op, Coh_Op__NoInvSnp_CLWB, Coh_Op__RdCurr_ns };
UPI_Opcode : enum { UPI_Opcode__RdCode, UPI_Opcode__RdData, UPI_Opcode__ReqFwdCnflt, UPI_Opcode__RdDataMig, UPI_Opcode__RdInvOwn, UPI_Opcode__InvXtoI, UPI_Opcode__InvItoE, UPI_Opcode__RdInv, UPI_Opcode__InvItoM, UPI_Opcode__WbMtoI, UPI_Opcode__WbMtoS, UPI_Opcode__WbMtoE, UPI_Opcode__WbEtoI, UPI_Opcode__RdCur, UPI_Opcode__WbMtoIPtl, UPI_Opcode__WbMtoEPtl, UPI_Opcode__SI_CmpO, UPI_Opcode__E_CmpO, UPI_Opcode__FwdCnfltO, UPI_Opcode__Data_M, UPI_Opcode__M_CmpO, UPI_Opcode__CmpU, UPI_Opcode__SnpLCode, UPI_Opcode__SnpLData, UPI_Opcode__SnpLInv, UPI_Opcode__SnpLCurr, UPI_Opcode__SnpInvOwn, UPI_Opcode__SnpCode, UPI_Opcode__SnpData, UPI_Opcode__SnpDataMig, UPI_Opcode__RspI, UPI_Opcode__RspIWb, UPI_Opcode__RspS, UPI_Opcode__RspSWb, UPI_Opcode__RspCurData, UPI_Opcode__RspE, UPI_Opcode__RspFwdID, UPI_Opcode__RspFwdIWb, UPI_Opcode__RspFwdIC, UPI_Opcode__RspFwdSWb, UPI_Opcode__RspFwdS, UPI_Opcode__Data_SI, UPI_Opcode__Data_E };
Mem_Op : enum { Mem_Op__Write_M, Mem_Op__Write_P, Mem_Op__Snoop_M, Mem_Op__Write_E, Mem_Op__Read, Mem_Op__Fwd, Mem_Op__Fill };
CacheState : enum { CacheState__M, CacheState__E, CacheState__S, CacheState__I };
MFSState : enum { MFSState__M, MFSState__E, MFSState__C, MFSState__I };
Resp_Op : enum { Resp_Op__Rsp2I, Resp_Op__Rsp2S, Resp_Op__Rsp2E, Resp_Op__Unknown };
CXM_Opcode : enum { CXM_Opcode__MemRd, CXM_Opcode__MemRdFwd, CXM_Opcode__MemWr, CXM_Opcode__MemWrPtl, CXM_Opcode__MemData, CXM_Opcode__Cmp };
TSTATE : enum { TSTATE__COH_BLOCKED, TSTATE__COH_WAIT_LKP, TSTATE__COH_SCHED_IFA, TSTATE__COH_SCHED_SNP };
CA_type : enum { CA_type__FTS, CA_type__EXC, CA_type__SOT };
Domain : enum { Domain__COH, Domain__MEM };
MFSMode : enum { MFSMode__Active, MFSMode__Off };
FOrDDataState : enum { FOrDDataState__F, FOrDDataState__D, FOrDDataState__Un };
RTID_STATE : enum { RTID_STATE__Idle, RTID_STATE__SentReq, RTID_STATE__RcvdData, RTID_STATE__RcvdCmp };
CacheOp : enum { CacheOp__ToI, CacheOp__ToS, CacheOp__ToEmptyE };
SRB_STATE : enum { SRB_STATE__Idle, SRB_STATE__Ready, SRB_STATE__Conflict, SRB_STATE__ReqSent, SRB_STATE__Resolved };
  SFEntry: Record
    CV_format: boolean;
    CV_bits_upi: array [SOTFTSUPIAgents] of boolean;
    CV_bits_idic: array [SOTFTSIDICAgents] of boolean;
    owner_protocol: Protocol;
    owner_id: Agents;
    valid: boolean;
    address: Address;
    allocAvoid: boolean;
  EndRecord;
  TractorEntry: Record
    valid: boolean;
    protocol: Protocol;
    iopcode: IDI_Opcode;
    agent_id: Agents;
    rtid: RTID;
    address: Address;
    coh_op: Coh_Op;
    selfsnp: boolean;
    uopcode: UPI_Opcode;
    alloc_hint: boolean;
    data: Line;
    be: BE;
    resp_sent: boolean;
    data_sent: boolean;
    sf_lookup_done: boolean;
    snpneeded: boolean;
    upi_peer_snooped: array [UPIAgents] of boolean;
    idic_peer_snooped: array [IDICAgents] of boolean;
    upi_snoop_target: array [UPIAgents] of boolean;
    idic_snoop_target: array [IDICAgents] of boolean;
    upi_snoop_opcode: array [UPIAgents] of UPI_Opcode;
    idic_snoop_opcode: array [IDICAgents] of IDI_Opcode;
    snpdone: boolean;
    ro_count: Agent_countp1;
    data_recvd: boolean;
    limit_S: boolean;
    snoop_data_recvd: boolean;
    one_fwd_resp_idic: boolean;
    extcmp_sent: boolean;
    iresp_opcode: IDI_Opcode;
    wb_recvd: boolean;
    next_entry_c: HTID;
    next_entry_m: HTID;
    mfs_lookup_done: boolean;
    mem_op_init: Mem_Op;
    mem_op_assigned: boolean;
    mem_req_sent: boolean;
    mem_resp_recvd: boolean;
    in_mem_domain: boolean;
    prlrd_req_sent: boolean;
    prlrd_resp_recvd: boolean;
    ifa_id: IFASize;
    lateMfsLkupNeeded: boolean;
    resp_state: CacheState;
    mfs_state: MFSState;
    mfs_hit: boolean;
    mfs_way: MFS_WAYS;
    late_mufasa_lookup_done: boolean;
    mufasa_alloc_update_done: boolean;
    mfsUpdateNeeded: boolean;
    sf_hit: boolean;
    sf_way: SF_WAYS;
    next_sf_state: SFEntry;
    sf_update_done: boolean;
    mfs_read_done: boolean;
  EndRecord;
  UPIPacket: Record
    opcode: UPI_Opcode;
    crnid: UPIAgents;
    address: Address;
    htid: HTID;
    responder_id: UPIAgents;
    rtid: RTID;
    data: Line;
    be: BE;
    alloc_hint: boolean;
  EndRecord;
  IDIPacket: Record
    opcode: IDI_Opcode;
    rtid: RTID;
    htid: HTID;
    cachestate: CacheState;
    address: Address;
    data: Line;
    selfsnp: boolean;
    responder_id: IDICAgents;
    bogus: boolean;
    be: BE;
    alloc_hint: boolean;
  EndRecord;
  AgentPacket: Record
    packet: IDIPacket;
    network_id: IDICAgents;
  EndRecord;
  LinkedList: Record
    valid: boolean;
    address: Address;
    head: HTID;
    tail: HTID;
  EndRecord;
  CXMPacket: Record
    opcode: CXM_Opcode;
    protocol: Protocol;
    agent_id: Agents;
    rtid: RTID;
    address: Address;
    txnid: MEM_TXNID;
    data: Line;
    be: BE;
    prlrd: boolean;
  EndRecord;
  MemTOREntry: Record
    valid: boolean;
    opcode: CXM_Opcode;
    address: Address;
    txnid: MEM_TXNID;
    data: Line;
    be: BE;
    prlrd: boolean;
    protocol: Protocol;
    rtid: RTID;
    agent_id: Agents;
  EndRecord;
  MFSEntry: Record
    state: MFSState;
    data: Line;
    address: Address;
    valid: boolean;
  EndRecord;
  MonitorEntry: Record
    address: Address;
    agent_id: IDICAgents;
    valid: boolean;
  EndRecord;
  IFAEntry: Record
    snpRspDone: boolean;
    FOrDData: FOrDDataState;
    tractor_id: HTID;
    rtid: RTID;
    agent_id: Agents;
    req_protocol: Protocol;
    valid: boolean;
    data: Line;
    dataE: boolean;
  EndRecord;
  HBo: Record
    tractor: array [HTID] of TractorEntry;
    mem: array [Address] of Line;
    sf: array [SF_WAYS] of SFEntry;
    UPIOutPacket: UPIPacket;
    from_ca: UPIPacket;
    to_ca: array [UPIAgents] of UPIPacket;
    to_ca__update: array [UPIAgents] of boolean;
    AgentOutPacket: AgentPacket;
    from_idicagent: AgentPacket;
    to_idicagent: array [IDICAgents] of AgentPacket;
    to_idicagent__update: array [IDICAgents] of boolean;
    coh_ll: array [Address] of LinkedList;
    mem_ll: array [Address] of LinkedList;
    CXMOutPacket: CXMPacket;
    from_mc_to_santa: array [UPIAgents] of CXMPacket;
    from_mc_to_santa__update: array [UPIAgents] of boolean;
    from_mc_to_idiclink: array [IDICAgents] of CXMPacket;
    from_mc_to_idiclink__update: array [IDICAgents] of boolean;
    mct: array [MEM_TORID] of MemTOREntry;
    count: MEM_TORIDp1;
    mufasa: array [MFS_WAYS] of MFSEntry;
    monitor: array [MonitorSize] of MonitorEntry;
    ifa: array [IFASize] of IFAEntry;
  EndRecord;
  TOREntry: Record
    opcode: UPI_Opcode;
    address: Address;
    state: RTID_STATE;
    torid: RTID;
    conflict: boolean;
    stale: boolean;
  EndRecord;
  CA_SnoopEntry: Record
    state: SRB_STATE;
    htid: HTID;
    opcode: UPI_Opcode;
    fwdtid: RTID;
    rtid: RTID;
    crnid: UPIAgents;
  EndRecord;
  CacheEntry: Record
    state: CacheState;
    data: Line;
    be: BE;
  EndRecord;
  CA: Record
    to_hbo: UPIPacket;
    to_hbo__update:boolean;
    from_hbo: UPIPacket;
    tor: array [RTID] of TOREntry;
    snoopq: array [Address] of CA_SnoopEntry;
    crnid: UPIAgents;
    cache: array [Address] of CacheEntry;
    rtid_usedby_snp: array [RTID] of boolean;
    forwardFromS: boolean;
    to_ca: array [UPIAgents] of UPIPacket;
    to_ca__update: array [UPIAgents] of boolean;
    from_ca: UPIPacket;
    from_santa: IDIPacket;
  EndRecord;
  Index__1: 0..0;
  Count: 0..1;
  Count__1: 0..1;
  UChannel__1: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of UPIPacket;
    count: Count__1;
  EndRecord;
  UChannel__2: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of UPIPacket;
    count: Count__1;
  EndRecord;
  UChannel__3: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of UPIPacket;
    count: Count__1;
  EndRecord;
  UChannel__4: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of UPIPacket;
    count: Count__1;
  EndRecord;
  UChannel__5: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of UPIPacket;
    count: Count__1;
  EndRecord;
  CChannel__5: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of CXMPacket;
    count: Count__1;
  EndRecord;
  ULink: Record
    CAReq: UChannel__1;
    CAWb: UChannel__2;
    HASnp: UChannel__3;
    CAResp: UChannel__4;
    HAResp: UChannel__5;
    MCResp: CChannel__5;
    from_ca: UPIPacket;
    to_ha: UPIPacket;
    to_ha__update:boolean;
    from_ha: UPIPacket;
    to_ca: UPIPacket;
    to_ca__update:boolean;
    from_mc: CXMPacket;
    to_core: IDIPacket;
    to_core__update:boolean;
  EndRecord;
  CQEntry: Record
    valid: boolean;
    opcode: IDI_Opcode;
    resp_recvd: boolean;
    respstate: CacheState;
    address: Address;
    data_recvd: boolean;
    selfsnp: boolean;
    data_sent: boolean;
    htid: HTID;
    extcmp_recvd: boolean;
    resp_opcode: IDI_Opcode;
    bogus: boolean;
    data: Line;
    stale: boolean;
  EndRecord;
  SnoopEntry: Record
    valid: boolean;
    opcode: IDI_Opcode;
    address: Address;
    htid: HTID;
    resp_sent: boolean;
    data_sent: boolean;
    resp_opcode: IDI_Opcode;
    resp_computed: boolean;
  EndRecord;
  range__3: 0..2;
  IDIAgent: Record
    to_hbo: IDIPacket;
    to_hbo__update:boolean;
    from_hbo: IDIPacket;
    cq: array [RTID] of CQEntry;
    cache: array [Address] of CacheEntry;
    snoopq: array [Snoopq_sz] of SnoopEntry;
    address_monitored: array [Address] of boolean;
  EndRecord;
  Channel__5: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of AgentPacket;
    count: Count__1;
  EndRecord;
  Channel__6: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of AgentPacket;
    count: Count__1;
  EndRecord;
  Channel__7: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of AgentPacket;
    count: Count__1;
  EndRecord;
  Channel__8: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of AgentPacket;
    count: Count__1;
  EndRecord;
  Channel__9: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of AgentPacket;
    count: Count__1;
  EndRecord;
  Channel__10: Record
    Index: Index__1;
    Count: Count__1;
    pkts: array [Index__1] of AgentPacket;
    count: Count__1;
  EndRecord;
  Link: Record
    A2FReq: Channel__5;
    F2AResp: Channel__6;
    F2AData: Channel__7;
    A2FResp: Channel__8;
    A2FData: Channel__9;
    F2AReq: Channel__10;
    from_agent: IDIPacket;
    to_fabric: AgentPacket;
    to_fabric__update:boolean;
    from_fabric: AgentPacket;
    to_agent: IDIPacket;
    to_agent__update:boolean;
    network_id: IDICAgents;
    from_mc: CXMPacket;
  EndRecord;
  Aux: Record
    latest_data: array [Address] of Line;
  EndRecord;
  State: Record
    idic_buffer: Line;
    buffer_be: BE;
    hbo: HBo;
    UPIAgent: array [UPIAgents] of CA;
    santa: array [UPIAgents] of ULink;
    IDICAgent: array [IDICAgents] of IDIAgent;
    idiclink: array [IDICAgents] of Link;
    aux: Aux;
  EndRecord;

var
  self: State;
  guard_failed: boolean;

procedure Guard(guard_status: boolean);
begin
  if (guard_status=False) then
    guard_failed:=True;
  endif;
end;

procedure SFEntry__release_sfentry(var self: SFEntry);
begin
    self.CV_format := False;
    for id: SOTFTSUPIAgents do
        self.CV_bits_upi[id] := False;
    endfor;
    for id: SOTFTSIDICAgents do
        self.CV_bits_idic[id] := False;
    endfor;
    undefine self.owner_id;
    undefine self.owner_protocol;
    self.valid := False;
    undefine self.address;
    self.allocAvoid := False;
end;

function SFEntry__all_cv_bits_0(var self: SFEntry):boolean;
begin
    for id: SOTFTSIDICAgents do
        if self.CV_bits_idic[id] then
          return False;
        endif;
    endfor;
    for id: SOTFTSUPIAgents do
        if self.CV_bits_upi[id] then
          return False;
        endif;
    endfor;
    return True;
end;

function SFEntry__all_cv_bits_0_for_fts(var self: SFEntry):boolean;
begin
    for id:= 0 to NUM_SOTIDICAgents-1 do
        if self.CV_bits_idic[id] then
          return False;
        endif;
    endfor;
    for id:= 0 to NUM_SOTUPIAgents-1 do
        if self.CV_bits_upi[id] then
          return False;
        endif;
    endfor;
    return True;
end;

function SFEntry__count_cv_bits_1(var self: SFEntry):Agent_countp1;
var
  count: Agent_countp1;
begin
    count := 0;
    for id: SOTFTSUPIAgents do
        if self.CV_bits_upi[id] then
          count := (count + 1);
        endif;
    endfor;
    for id: SOTFTSIDICAgents do
        if self.CV_bits_idic[id] then
          count := (count + 1);
        endif;
    endfor;
    return count;
end;

procedure TractorEntry__release_tractorentry(var self: TractorEntry);
begin
    self.valid := False;
    undefine self.iopcode;
    undefine self.agent_id;
    undefine self.rtid;
    self.resp_sent := False;
    undefine self.address;
    self.data_sent := False;
    self.sf_lookup_done := False;
    self.snpneeded := False;
    for id: UPIAgents do
        self.upi_peer_snooped[id] := False;
        self.upi_snoop_target[id] := False;
        undefine self.upi_snoop_opcode[id];
    endfor;
    for id: IDICAgents do
        self.idic_peer_snooped[id] := False;
        self.idic_snoop_target[id] := False;
        undefine self.idic_snoop_opcode[id];
    endfor;
    self.snpdone := False;
    self.ro_count := 0;
    undefine self.coh_op;
    self.selfsnp := False;
    self.data_recvd := False;
    self.limit_S := False;
    self.snoop_data_recvd := False;
    self.one_fwd_resp_idic := False;
    undefine self.protocol;
    self.extcmp_sent := False;
    undefine self.iresp_opcode;
    undefine self.uopcode;
    undefine self.data;
    self.wb_recvd := False;
    undefine self.next_entry_c;
    undefine self.next_entry_m;
    self.mfs_lookup_done := False;
    undefine self.mem_op_init;
    self.mem_op_assigned := False;
    undefine self.be;
    self.mem_req_sent := False;
    self.mem_resp_recvd := False;
    self.in_mem_domain := False;
    self.prlrd_req_sent := False;
    self.prlrd_resp_recvd := False;
    undefine self.ifa_id;
    self.lateMfsLkupNeeded := False;
    undefine self.resp_state;
    undefine self.mfs_state;
    self.mfs_hit := False;
    undefine self.mfs_way;
    self.late_mufasa_lookup_done := False;
    self.mufasa_alloc_update_done := False;
    self.sf_hit := False;
    undefine self.sf_way;
    self.alloc_hint := False;
    SFEntry__release_sfentry(self.next_sf_state);
    self.sf_update_done := False;
    self.mfsUpdateNeeded := False;
    self.mfs_read_done := False;
end;

procedure TractorEntry__load_idic_packet(var self: TractorEntry; agent_id: IDICAgents; var packet: IDIPacket);
begin
    self.valid := True;
    self.iopcode := packet.opcode;
    self.agent_id := agent_id;
    self.rtid := packet.rtid;
    self.address := packet.address;
    self.alloc_hint := packet.alloc_hint;
    if (packet.opcode=IDI_Opcode__RdAny ) then
      self.coh_op := Coh_Op__Get_SE;
    elsif (packet.opcode=IDI_Opcode__RdCurr ) then
      self.coh_op := Coh_Op__NoInvSnp_RdCur;
    elsif (packet.opcode=IDI_Opcode__RdOwn | packet.opcode=IDI_Opcode__RdOwnNoData ) then
      self.coh_op := Coh_Op__Get_E;
    elsif (packet.opcode=IDI_Opcode__RdShared ) then
      self.coh_op := Coh_Op__Get_S;
    elsif (packet.opcode=IDI_Opcode__ItoMWr | packet.opcode=IDI_Opcode__WOWrInv | packet.opcode=IDI_Opcode__WOWrInvF | packet.opcode=IDI_Opcode__WrInv | packet.opcode=IDI_Opcode__MemWr ) then
      self.coh_op := Coh_Op__Wr_Inv;
    elsif (packet.opcode=IDI_Opcode__CLFlush | packet.opcode=IDI_Opcode__CLFlush_OPT | packet.opcode=IDI_Opcode__UcRdF ) then
      self.coh_op := Coh_Op__Flush;
    elsif (packet.opcode=IDI_Opcode__CleanEvict | packet.opcode=IDI_Opcode__DirtyEvict | packet.opcode=IDI_Opcode__CleanEvictNoData ) then
      self.coh_op := Coh_Op__WB_2I;
    elsif (packet.opcode=IDI_Opcode__CleanEvictNoInvalidate | packet.opcode=IDI_Opcode__DirtyEvictNoInv | packet.opcode=IDI_Opcode__PrefetchtoSysCache | packet.opcode=IDI_Opcode__ClrMonitor ) then
      self.coh_op := Coh_Op__No_Coh_Op;
      self.snpneeded := False;
      self.sf_lookup_done := True;
    elsif (packet.opcode=IDI_Opcode__CLWB ) then
      self.coh_op := Coh_Op__NoInvSnp_CLWB;
    elsif (packet.opcode=IDI_Opcode__SetMonitor ) then
      self.coh_op := Coh_Op__Get_S;
    elsif (packet.opcode=IDI_Opcode__RdCurr_ns ) then
      self.coh_op := Coh_Op__RdCurr_ns;
    else
      assert False " Coh op mapping is not defined for IDI.C opcode  packet.opcode";
    endif;
    self.selfsnp := packet.selfsnp;
    self.protocol := Protocol__IDIC;
end;

procedure TractorEntry__load_upi_packet(var self: TractorEntry; var packet: UPIPacket);
begin
    self.valid := True;
    self.uopcode := packet.opcode;
    self.agent_id := packet.crnid;
    self.rtid := packet.rtid;
    self.resp_state := CacheState__E;
    if (packet.opcode != UPI_Opcode__ReqFwdCnflt) then
      self.alloc_hint := packet.alloc_hint;
    endif;
    self.address := packet.address;
    if (packet.opcode=UPI_Opcode__RdCode ) then
      self.coh_op := Coh_Op__Get_S;
    elsif (packet.opcode=UPI_Opcode__RdData | packet.opcode=UPI_Opcode__RdDataMig ) then
      self.coh_op := Coh_Op__Get_SE;
    elsif (packet.opcode=UPI_Opcode__ReqFwdCnflt | packet.opcode=UPI_Opcode__WbMtoS | packet.opcode=UPI_Opcode__WbMtoE | packet.opcode=UPI_Opcode__WbMtoEPtl ) then
      self.coh_op := Coh_Op__No_Coh_Op;
      self.snpneeded := False;
      self.sf_lookup_done := True;
    elsif (packet.opcode=UPI_Opcode__RdInvOwn | packet.opcode=UPI_Opcode__InvItoE | packet.opcode=UPI_Opcode__RdInv | packet.opcode=UPI_Opcode__InvItoM ) then
      self.coh_op := Coh_Op__Get_E;
    elsif (packet.opcode=UPI_Opcode__InvXtoI ) then
      self.coh_op := Coh_Op__Flush;
    elsif (packet.opcode=UPI_Opcode__WbMtoI | packet.opcode=UPI_Opcode__WbEtoI | packet.opcode=UPI_Opcode__WbMtoIPtl ) then
      self.coh_op := Coh_Op__WB_2I;
      self.snpneeded := False;
    elsif (packet.opcode=UPI_Opcode__RdCur ) then
      self.coh_op := Coh_Op__NoInvSnp_RdCur;
    else
      assert False " Coh op mapping is not defined for UPI opcode  packet.opcode";
    endif;
    self.protocol := Protocol__UPI;
end;

procedure LinkedList__release_ll(var self: LinkedList);
begin
    self.valid := False;
    undefine self.address;
    undefine self.head;
    undefine self.tail;
end;

procedure MemTOREntry__reset(var self: MemTOREntry);
begin
    self.valid := False;
    undefine self.address;
    undefine self.opcode;
    undefine self.txnid;
    undefine self.data;
    for word: Word do
        self.be[word] := False;
    endfor;
    self.prlrd := False;
    undefine self.protocol;
    undefine self.rtid;
    undefine self.agent_id;
end;

procedure MemTOREntry__load(var self: MemTOREntry; var packet: CXMPacket);
begin
    self.valid := True;
    self.address := packet.address;
    self.opcode := packet.opcode;
    self.txnid := packet.txnid;
    if (self.opcode=CXM_Opcode__MemWrPtl ) then
      self.data := packet.data;
      self.be := packet.be;
    elsif (self.opcode=CXM_Opcode__MemWr ) then
      self.data := packet.data;
    elsif (self.opcode=CXM_Opcode__MemRd ) then
      self.prlrd := packet.prlrd;
    elsif (self.opcode=CXM_Opcode__MemRdFwd ) then
      self.protocol := packet.protocol;
      self.rtid := packet.rtid;
      self.agent_id := packet.agent_id;
    endif;
end;

procedure MFSEntry__release_mfsentry(var self: MFSEntry);
begin
    self.state := MFSState__I;
    undefine self.data;
    self.valid := False;
    undefine self.address;
end;

procedure MonitorEntry__release_monitorentry(var self: MonitorEntry);
begin
    undefine self.address;
    self.valid := False;
    undefine self.agent_id;
end;

procedure MonitorEntry__load(var self: MonitorEntry; address: Address; agent: IDICAgents);
begin
    self.valid := True;
    self.address := address;
    self.agent_id := agent;
end;

procedure IFAEntry__release_ifaentry(var self: IFAEntry);
begin
    self.valid := False;
    self.snpRspDone := False;
    undefine self.FOrDData;
    undefine self.tractor_id;
    undefine self.rtid;
    undefine self.agent_id;
    undefine self.req_protocol;
    undefine self.data;
    self.dataE := False;
end;

procedure IFAEntry__load(var self: IFAEntry; tid: HTID; rtid: RTID; agent: Agents; protocol: Protocol);
begin
    self.valid := True;
    self.snpRspDone := False;
    self.FOrDData := FOrDDataState__Un;
    self.tractor_id := tid;
    self.rtid := rtid;
    self.agent_id := agent;
    self.req_protocol := protocol;
end;

procedure HBo__reset(var self: HBo);
begin
    for id: HTID do
        TractorEntry__release_tractorentry(self.tractor[id]);
    endfor;
    for addr: Address do
        for word: Word do
            self.mem[addr][word] := 0;
        endfor;
        LinkedList__release_ll(self.coh_ll[addr]);
        LinkedList__release_ll(self.mem_ll[addr]);
    endfor;
    for way: MFS_WAYS do
        MFSEntry__release_mfsentry(self.mufasa[way]);
    endfor;
    for way: SF_WAYS do
        SFEntry__release_sfentry(self.sf[way]);
    endfor;
    for id: MEM_TORID do
        MemTOREntry__reset(self.mct[id]);
    endfor;
    self.count := 0;
    for id: MonitorSize do
        MonitorEntry__release_monitorentry(self.monitor[id]);
    endfor;
    for id: IFASize do
        IFAEntry__release_ifaentry(self.ifa[id]);
    endfor;
end;

function HBo__detect_CA_type(var self: HBo; agent_id: Agents; protocol: Protocol):CA_type;
begin
    if (protocol = Protocol__IDIC) then
      if (agent_id < NUM_SOTIDICAgents) then
        return CA_type__SOT;
      elsif (agent_id < (NUM_SOTIDICAgents + NUM_FTSIDICAgents)) then
        return CA_type__FTS;
      else
        return CA_type__EXC;
      endif;
    elsif (agent_id < NUM_SOTUPIAgents) then
      return CA_type__SOT;
    elsif (agent_id < (NUM_SOTUPIAgents + NUM_FTSUPIAgents)) then
      return CA_type__FTS;
    else
      return CA_type__EXC;
    endif;
end;

function HBo__is_available_TractorEntry(var self: HBo):boolean;
begin
    for id:= 0 to (MAX_HTID - 1)-1 do
        if !(self.tractor[id].valid) then
          return True;
        endif;
    endfor;
    return False;
end;

function HBo__available_TractorEntry(var self: HBo):HTID;
begin
    for id:= 0 to (MAX_HTID - 1)-1 do
        if !(self.tractor[id].valid) then
          return id;
        endif;
    endfor;
end;

function HBo__is_available_monitor_entry(var self: HBo):boolean;
begin
    for id: MonitorSize do
        if !(self.monitor[id].valid) then
          return True;
        endif;
    endfor;
    return False;
end;

function HBo__available_monitor_entry(var self: HBo):MonitorSize;
begin
    for id: MonitorSize do
        if !(self.monitor[id].valid) then
          return id;
        endif;
    endfor;
end;

procedure HBo__recv_A2FReq(var self: HBo; agent: IDICAgents; var packet: IDIPacket);
var
  idx: HTID;
begin
    Guard(HBo__is_available_TractorEntry(self));
    if isundefined(guard_failed) then
      idx := HBo__available_TractorEntry(self);
    TractorEntry__load_idic_packet(self.tractor[idx], agent, packet);
      if (packet.opcode = IDI_Opcode__PrefetchtoSysCache) then
        if self.mem_ll[packet.address].valid then
          self.tractor[self.mem_ll[packet.address].tail].next_entry_m := idx;
          self.mem_ll[packet.address].tail := idx;
        else
          self.mem_ll[packet.address].valid := True;
          self.mem_ll[packet.address].head := idx;
          self.mem_ll[packet.address].tail := idx;
        endif;
        self.tractor[idx].in_mem_domain := True;
        if mufasa_mode then
          self.tractor[idx].mem_op_assigned := True;
          self.tractor[idx].mem_op_init := Mem_Op__Fill;
          self.tractor[idx].lateMfsLkupNeeded := True;
        endif;
      elsif !((packet.opcode = IDI_Opcode__ClrMonitor)) then
        if self.coh_ll[packet.address].valid then
          self.tractor[self.coh_ll[packet.address].tail].next_entry_c := idx;
          self.coh_ll[packet.address].tail := idx;
        else
          self.coh_ll[packet.address].valid := True;
          self.coh_ll[packet.address].head := idx;
          self.coh_ll[packet.address].tail := idx;
        endif;
      elsif (packet.alloc_hint &  mufasa_mode ) then
        self.tractor[idx].lateMfsLkupNeeded := True;
      endif;
    endif;
end;

procedure HBo__update_and_free_tractor_entry(var self: HBo; htid: HTID);
begin
    if ((self.coh_ll[self.tractor[htid].address].tail = htid) &  (self.coh_ll[self.tractor[htid].address].head = htid) ) then
      self.coh_ll[self.tractor[htid].address].valid := False;
      undefine self.coh_ll[self.tractor[htid].address].head;
      undefine self.coh_ll[self.tractor[htid].address].tail;
    elsif (self.coh_ll[self.tractor[htid].address].head = htid) then
      self.coh_ll[self.tractor[htid].address].head := self.tractor[self.coh_ll[self.tractor[htid].address].head].next_entry_c;
    endif;
    if (self.mem_ll[self.tractor[htid].address].valid &  (self.mem_ll[self.tractor[htid].address].tail = htid) &  (self.mem_ll[self.tractor[htid].address].head = htid) ) then
      self.mem_ll[self.tractor[htid].address].valid := False;
      undefine self.mem_ll[self.tractor[htid].address].head;
      undefine self.mem_ll[self.tractor[htid].address].tail;
    elsif (self.mem_ll[self.tractor[htid].address].valid &  (self.mem_ll[self.tractor[htid].address].head = htid) ) then
      self.mem_ll[self.tractor[htid].address].head := self.tractor[self.mem_ll[self.tractor[htid].address].head].next_entry_m;
    endif;
    TractorEntry__release_tractorentry(self.tractor[htid]);
end;

function HBo__all_needed_peers_are_snooped(var self: HBo; htid: HTID):boolean;
begin
    if self.tractor[htid].snpneeded then
      for agent: UPIAgents do
          if (!(self.tractor[htid].upi_peer_snooped[agent]) &  self.tractor[htid].upi_snoop_target[agent] ) then
            return False;
          endif;
      endfor;
      for agent: IDICAgents do
          if (!(self.tractor[htid].idic_peer_snooped[agent]) &  self.tractor[htid].idic_snoop_target[agent] ) then
            return False;
          endif;
      endfor;
    endif;
    return True;
end;

procedure HBo__late_sf_update(var self: HBo; htid: HTID; address: Address);
begin
    if !(self.tractor[htid].sf_update_done) then
      if (self.tractor[htid].coh_op=Coh_Op__Get_S | self.tractor[htid].coh_op=Coh_Op__Get_SE ) then
        if (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__SOT) then
          if self.tractor[htid].sf_hit then
            if !(self.tractor[htid].next_sf_state.CV_format) then
              if self.tractor[htid].limit_S then
                if (self.tractor[htid].protocol = Protocol__UPI) then
                  self.tractor[htid].next_sf_state.CV_bits_upi[self.tractor[htid].agent_id] := True;
                elsif (self.tractor[htid].protocol = Protocol__IDIC) then
                  self.tractor[htid].next_sf_state.CV_bits_idic[self.tractor[htid].agent_id] := True;
                endif;
                self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
              else
                SFEntry__release_sfentry(self.tractor[htid].next_sf_state);
                self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
              endif;
            else
              SFEntry__release_sfentry(self.tractor[htid].next_sf_state);
              self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__FTS) then
          if !(self.tractor[htid].sf_hit) then
            self.tractor[htid].next_sf_state.valid := True;
            self.tractor[htid].next_sf_state.address := self.tractor[htid].address;
            self.tractor[htid].next_sf_state.CV_format := False;
            if (self.tractor[htid].protocol = Protocol__UPI) then
              self.tractor[htid].next_sf_state.CV_bits_upi[self.tractor[htid].agent_id] := True;
            elsif (self.tractor[htid].protocol = Protocol__IDIC) then
              self.tractor[htid].next_sf_state.CV_bits_idic[self.tractor[htid].agent_id] := True;
            endif;
            if self.tractor[htid].limit_S then
              for id: SOTUPIAgents do
                  self.tractor[htid].next_sf_state.CV_bits_upi[id] := True;
              endfor;
              for id: SOTIDICAgents do
                  self.tractor[htid].next_sf_state.CV_bits_idic[id] := True;
              endfor;
            endif;
            self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
          elsif self.tractor[htid].sf_hit then
            if !(self.tractor[htid].next_sf_state.CV_format) then
              if SFEntry__all_cv_bits_0(self.tractor[htid].next_sf_state) then
                self.tractor[htid].next_sf_state.valid := True;
                self.tractor[htid].next_sf_state.address := self.tractor[htid].address;
                self.tractor[htid].next_sf_state.CV_format := False;
                if (self.tractor[htid].protocol = Protocol__UPI) then
                  self.tractor[htid].next_sf_state.CV_bits_upi[self.tractor[htid].agent_id] := True;
                elsif (self.tractor[htid].protocol = Protocol__IDIC) then
                  self.tractor[htid].next_sf_state.CV_bits_idic[self.tractor[htid].agent_id] := True;
                endif;
                if self.tractor[htid].limit_S then
                  for id: SOTUPIAgents do
                      self.tractor[htid].next_sf_state.CV_bits_upi[id] := True;
                  endfor;
                  for id: SOTIDICAgents do
                      self.tractor[htid].next_sf_state.CV_bits_idic[id] := True;
                  endfor;
                endif;
                self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
              elsif (SFEntry__count_cv_bits_1(self.tractor[htid].next_sf_state) = 1) then
                if self.tractor[htid].limit_S then
                  if (self.tractor[htid].protocol = Protocol__UPI) then
                    self.tractor[htid].next_sf_state.CV_bits_upi[self.tractor[htid].agent_id] := True;
                  elsif (self.tractor[htid].protocol = Protocol__IDIC) then
                    self.tractor[htid].next_sf_state.CV_bits_idic[self.tractor[htid].agent_id] := True;
                  endif;
                else
                  for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                      self.tractor[htid].next_sf_state.CV_bits_upi[id] := False;
                  endfor;
                  for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                      self.tractor[htid].next_sf_state.CV_bits_idic[id] := False;
                  endfor;
                  if (self.tractor[htid].protocol = Protocol__UPI) then
                    self.tractor[htid].next_sf_state.CV_bits_upi[self.tractor[htid].agent_id] := True;
                  elsif (self.tractor[htid].protocol = Protocol__IDIC) then
                    self.tractor[htid].next_sf_state.CV_bits_idic[self.tractor[htid].agent_id] := True;
                  endif;
                endif;
              elsif (SFEntry__count_cv_bits_1(self.tractor[htid].next_sf_state) > 1) then
                for id: SOTFTSUPIAgents do
                    self.tractor[htid].next_sf_state.CV_bits_upi[id] := False;
                endfor;
                for id: SOTFTSIDICAgents do
                    self.tractor[htid].next_sf_state.CV_bits_idic[id] := False;
                endfor;
                if (self.tractor[htid].protocol = Protocol__UPI) then
                  self.tractor[htid].next_sf_state.CV_bits_upi[self.tractor[htid].agent_id] := True;
                elsif (self.tractor[htid].protocol = Protocol__IDIC) then
                  self.tractor[htid].next_sf_state.CV_bits_idic[self.tractor[htid].agent_id] := True;
                endif;
              endif;
            else
              self.tractor[htid].next_sf_state.CV_format := False;
              undefine self.tractor[htid].next_sf_state.owner_protocol;
              undefine self.tractor[htid].next_sf_state.owner_id;
              if (self.tractor[htid].protocol = Protocol__UPI) then
                self.tractor[htid].next_sf_state.CV_bits_upi[self.tractor[htid].agent_id] := True;
              elsif (self.tractor[htid].protocol = Protocol__IDIC) then
                self.tractor[htid].next_sf_state.CV_bits_idic[self.tractor[htid].agent_id] := True;
              endif;
            endif;
            self.tractor[htid].next_sf_state.valid := True;
            self.tractor[htid].next_sf_state.address := self.tractor[htid].address;
            self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__EXC) then
          if !(self.tractor[htid].sf_hit) then
            self.tractor[htid].next_sf_state.valid := True;
            self.tractor[htid].next_sf_state.address := self.tractor[htid].address;
            self.tractor[htid].next_sf_state.CV_format := True;
            self.tractor[htid].next_sf_state.owner_protocol := self.tractor[htid].protocol;
            self.tractor[htid].next_sf_state.owner_id := self.tractor[htid].agent_id;
            self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
          elsif self.tractor[htid].sf_hit then
            self.tractor[htid].next_sf_state.valid := True;
            self.tractor[htid].next_sf_state.address := self.tractor[htid].address;
            self.tractor[htid].next_sf_state.CV_format := True;
            self.tractor[htid].next_sf_state.owner_protocol := self.tractor[htid].protocol;
            self.tractor[htid].next_sf_state.owner_id := self.tractor[htid].agent_id;
            for id: SOTFTSIDICAgents do
                self.tractor[htid].next_sf_state.CV_bits_idic[id] := False;
            endfor;
            for id: SOTFTSUPIAgents do
                self.tractor[htid].next_sf_state.CV_bits_upi[id] := False;
            endfor;
            self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
          endif;
        endif;
      elsif (self.tractor[htid].coh_op=Coh_Op__Get_E ) then
        if (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__SOT) then
          if self.tractor[htid].sf_hit then
            SFEntry__release_sfentry(self.tractor[htid].next_sf_state);
          endif;
          self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__FTS) then
          if !(self.tractor[htid].sf_hit) then
            self.tractor[htid].next_sf_state.valid := True;
            self.tractor[htid].next_sf_state.address := self.tractor[htid].address;
            self.tractor[htid].next_sf_state.CV_format := False;
            if (self.tractor[htid].protocol = Protocol__UPI) then
              self.tractor[htid].next_sf_state.CV_bits_upi[self.tractor[htid].agent_id] := True;
            elsif (self.tractor[htid].protocol = Protocol__IDIC) then
              self.tractor[htid].next_sf_state.CV_bits_idic[self.tractor[htid].agent_id] := True;
            endif;
            self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
          elsif self.tractor[htid].sf_hit then
            if !(self.tractor[htid].next_sf_state.CV_format) then
              if SFEntry__all_cv_bits_0(self.tractor[htid].next_sf_state) then
                if (self.tractor[htid].protocol = Protocol__UPI) then
                  self.tractor[htid].next_sf_state.CV_bits_upi[self.tractor[htid].agent_id] := True;
                elsif (self.tractor[htid].protocol = Protocol__IDIC) then
                  self.tractor[htid].next_sf_state.CV_bits_idic[self.tractor[htid].agent_id] := True;
                endif;
                self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
              elsif (SFEntry__count_cv_bits_1(self.tractor[htid].next_sf_state) > 0) then
                for id: SOTFTSUPIAgents do
                    self.tractor[htid].next_sf_state.CV_bits_upi[id] := False;
                endfor;
                for id: SOTFTSIDICAgents do
                    self.tractor[htid].next_sf_state.CV_bits_idic[id] := False;
                endfor;
                if (self.tractor[htid].protocol = Protocol__UPI) then
                  self.tractor[htid].next_sf_state.CV_bits_upi[self.tractor[htid].agent_id] := True;
                elsif (self.tractor[htid].protocol = Protocol__IDIC) then
                  self.tractor[htid].next_sf_state.CV_bits_idic[self.tractor[htid].agent_id] := True;
                endif;
              endif;
            else
              self.tractor[htid].next_sf_state.CV_format := False;
              undefine self.tractor[htid].next_sf_state.owner_protocol;
              undefine self.tractor[htid].next_sf_state.owner_id;
              if (self.tractor[htid].protocol = Protocol__UPI) then
                self.tractor[htid].next_sf_state.CV_bits_upi[self.tractor[htid].agent_id] := True;
              elsif (self.tractor[htid].protocol = Protocol__IDIC) then
                self.tractor[htid].next_sf_state.CV_bits_idic[self.tractor[htid].agent_id] := True;
              endif;
            endif;
            self.tractor[htid].next_sf_state.valid := True;
            self.tractor[htid].next_sf_state.address := self.tractor[htid].address;
            self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__EXC) then
          if !(self.tractor[htid].sf_hit) then
            self.tractor[htid].next_sf_state.valid := True;
            self.tractor[htid].next_sf_state.address := self.tractor[htid].address;
            self.tractor[htid].next_sf_state.CV_format := True;
            self.tractor[htid].next_sf_state.owner_protocol := self.tractor[htid].protocol;
            self.tractor[htid].next_sf_state.owner_id := self.tractor[htid].agent_id;
            self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
          elsif self.tractor[htid].sf_hit then
            self.tractor[htid].next_sf_state.valid := True;
            self.tractor[htid].next_sf_state.address := self.tractor[htid].address;
            self.tractor[htid].next_sf_state.CV_format := True;
            self.tractor[htid].next_sf_state.owner_protocol := self.tractor[htid].protocol;
            self.tractor[htid].next_sf_state.owner_id := self.tractor[htid].agent_id;
            for id: SOTFTSIDICAgents do
                self.tractor[htid].next_sf_state.CV_bits_idic[id] := False;
            endfor;
            for id: SOTFTSUPIAgents do
                self.tractor[htid].next_sf_state.CV_bits_upi[id] := False;
            endfor;
            self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
          endif;
        endif;
      elsif (self.tractor[htid].coh_op=Coh_Op__Wr_Inv | self.tractor[htid].coh_op=Coh_Op__Flush ) then
        SFEntry__release_sfentry(self.tractor[htid].next_sf_state);
        self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
      elsif (self.tractor[htid].coh_op=Coh_Op__Wr_Inv | self.tractor[htid].coh_op=Coh_Op__Flush ) then
        SFEntry__release_sfentry(self.tractor[htid].next_sf_state);
        self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
      elsif (self.tractor[htid].coh_op=Coh_Op__NoInvSnp_CLWB | self.tractor[htid].coh_op=Coh_Op__NoInvSnp_RdCur | self.tractor[htid].coh_op=Coh_Op__RdCurr_ns ) then
        self.tractor[htid].next_sf_state.valid := True;
        self.tractor[htid].next_sf_state.address := self.tractor[htid].address;
        self.sf[self.tractor[htid].sf_way] := self.tractor[htid].next_sf_state;
      endif;
    endif;
end;

procedure HBo__recv_A2FData(var self: HBo; var packet: IDIPacket);
var
  htid: HTID;
begin
    htid := packet.htid;
    if ((!(self.tractor[htid].snpneeded) |  self.tractor[htid].snpdone ) &  (self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__WrInv | self.tractor[htid].iopcode=IDI_Opcode__MemWr ) ) then
      assert !(self.tractor[htid].data_recvd) " Unexpected data recvd for htid  htid";
      self.tractor[htid].data_recvd := True;
      if ((self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__WrInv | self.tractor[htid].iopcode=IDI_Opcode__MemWr | self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate ) &  !(packet.bogus) ) then
        if mem_abstracted then
          if (self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__MemWr ) then
            self.mem[self.tractor[htid].address] := packet.data;
          elsif (self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WrInv ) then
            for word: Word do
                if packet.be[word] then
                  self.mem[self.tractor[htid].address][word] := packet.data[word];
                endif;
            endfor;
          endif;
        elsif (self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__MemWr | self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate ) then
          self.tractor[htid].be := packet.be;
          self.tractor[htid].data := packet.data;
        elsif (self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WrInv ) then
          if !(self.tractor[htid].snoop_data_recvd) then
            self.tractor[htid].be := packet.be;
            self.tractor[htid].data := packet.data;
          else
            for word: Word do
                if packet.be[word] then
                  self.tractor[htid].data[word] := packet.data[word];
                endif;
            endfor;
          endif;
        endif;
      elsif ((self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv ) &  packet.bogus ) then
        HBo__update_and_free_tractor_entry(self, htid);
      endif;
    else
      assert !(self.tractor[htid].snoop_data_recvd) " Unexpected data recvd for htid  htid";
      self.tractor[htid].snoop_data_recvd := True;
      self.tractor[packet.htid].data := packet.data;
      self.tractor[packet.htid].be := packet.be;
      if (self.tractor[packet.htid].prlrd_req_sent &  !(self.tractor[packet.htid].prlrd_resp_recvd) ) then
        self.ifa[self.tractor[packet.htid].ifa_id].FOrDData := FOrDDataState__D;
        if self.tractor[packet.htid].data_sent then
          self.tractor[packet.htid].data_sent := False;
        endif;
      endif;
      if ((self.tractor[packet.htid].ro_count = 0) &  HBo__all_needed_peers_are_snooped(self, packet.htid) &  (!(self.tractor[packet.htid].one_fwd_resp_idic) |  self.tractor[packet.htid].snoop_data_recvd ) ) then
        self.tractor[packet.htid].snpdone := True;
        HBo__late_sf_update(self, packet.htid, self.tractor[packet.htid].address);
        if (self.tractor[packet.htid].prlrd_req_sent &  !(self.tractor[packet.htid].prlrd_resp_recvd) ) then
          self.ifa[self.tractor[packet.htid].ifa_id].snpRspDone := True;
        endif;
      endif;
      if (self.tractor[packet.htid].coh_op=Coh_Op__Flush ) then
        if mem_abstracted then
          self.mem[self.tractor[packet.htid].address] := packet.data;
        endif;
      endif;
    endif;
end;

procedure HBo__recv_ack_response(var self: HBo; var packet: IDIPacket);
var
  htid: HTID;
begin
    htid := packet.htid;
    assert (!(self.tractor[htid].data_recvd) &  (self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate ) &  (self.tractor[htid].iresp_opcode = IDI_Opcode__GoWritePullDrop) ) " Unexpected ack recvd for htid  htid";
    HBo__update_and_free_tractor_entry(self, htid);
end;

procedure HBo__recv_idic_snoop_response(var self: HBo; var packet: IDIPacket);
var
  resp_opcode: Resp_Op;
begin
    self.tractor[packet.htid].ro_count := (self.tractor[packet.htid].ro_count - 1);
    if (packet.opcode=IDI_Opcode__RspSHitSE | packet.opcode=IDI_Opcode__RspSFwdM ) then
      resp_opcode := Resp_Op__Rsp2S;
      if (self.tractor[packet.htid].protocol = Protocol__UPI) then
        self.tractor[packet.htid].resp_state := CacheState__S;
      endif;
    elsif (packet.opcode=IDI_Opcode__RspIHitI | packet.opcode=IDI_Opcode__RspIHitSE | packet.opcode=IDI_Opcode__RspIFwdM ) then
      resp_opcode := Resp_Op__Rsp2I;
    elsif (packet.opcode=IDI_Opcode__RspVHitV | packet.opcode=IDI_Opcode__RspVFwdV ) then
      resp_opcode := Resp_Op__Unknown;
    else
      assert False " snoop response opcode mapping is not defined for  packet.opcode";
    endif;
    if (packet.opcode=IDI_Opcode__RspIFwdM | packet.opcode=IDI_Opcode__RspSFwdM | packet.opcode=IDI_Opcode__RspVFwdV ) then
      self.tractor[packet.htid].one_fwd_resp_idic := True;
      if (packet.opcode=IDI_Opcode__RspIFwdM | packet.opcode=IDI_Opcode__RspSFwdM ) then
        self.tractor[packet.htid].wb_recvd := True;
      endif;
      if (self.tractor[packet.htid].prlrd_req_sent &  !(self.tractor[packet.htid].prlrd_resp_recvd) ) then
        self.ifa[self.tractor[packet.htid].ifa_id].FOrDData := FOrDDataState__D;
        if self.tractor[packet.htid].data_sent then
          self.tractor[packet.htid].data_sent := False;
        endif;
      endif;
    endif;
    if (self.tractor[packet.htid].coh_op=Coh_Op__Get_SE | self.tractor[packet.htid].coh_op=Coh_Op__Get_S ) then
      if (HBo__detect_CA_type(self, self.tractor[packet.htid].agent_id, self.tractor[packet.htid].protocol)=CA_type__SOT | HBo__detect_CA_type(self, self.tractor[packet.htid].agent_id, self.tractor[packet.htid].protocol)=CA_type__FTS ) then
        if (resp_opcode = Resp_Op__Rsp2S) then
          self.tractor[packet.htid].limit_S := True;
        endif;
      endif;
      if self.tractor[packet.htid].limit_S then
        if (self.tractor[packet.htid].prlrd_req_sent &  !(self.tractor[packet.htid].prlrd_resp_recvd) ) then
          self.ifa[self.tractor[packet.htid].ifa_id].dataE := False;
        endif;
      endif;
    elsif (self.tractor[packet.htid].coh_op=Coh_Op__NoInvSnp_RdCur ) then
      if (HBo__detect_CA_type(self, self.tractor[packet.htid].agent_id, self.tractor[packet.htid].protocol)=CA_type__SOT | HBo__detect_CA_type(self, self.tractor[packet.htid].agent_id, self.tractor[packet.htid].protocol)=CA_type__FTS | HBo__detect_CA_type(self, self.tractor[packet.htid].agent_id, self.tractor[packet.htid].protocol)=CA_type__EXC ) then
        if self.tractor[packet.htid].sf_hit then
          if !(self.tractor[packet.htid].next_sf_state.CV_format) then
            if (SFEntry__count_cv_bits_1(self.tractor[packet.htid].next_sf_state) = 1) then
              if (resp_opcode = Resp_Op__Rsp2I) then
                SFEntry__release_sfentry(self.tractor[packet.htid].next_sf_state);
              endif;
            endif;
          elsif (resp_opcode = Resp_Op__Rsp2I) then
            SFEntry__release_sfentry(self.tractor[packet.htid].next_sf_state);
          endif;
        endif;
      endif;
    endif;
    if ((self.tractor[packet.htid].ro_count = 0) &  HBo__all_needed_peers_are_snooped(self, packet.htid) &  (!(self.tractor[packet.htid].one_fwd_resp_idic) |  self.tractor[packet.htid].snoop_data_recvd ) ) then
      self.tractor[packet.htid].snpdone := True;
      HBo__late_sf_update(self, packet.htid, self.tractor[packet.htid].address);
      if (self.tractor[packet.htid].prlrd_req_sent &  !(self.tractor[packet.htid].prlrd_resp_recvd) ) then
        self.ifa[self.tractor[packet.htid].ifa_id].snpRspDone := True;
        if ((self.ifa[self.tractor[packet.htid].ifa_id].FOrDData = FOrDDataState__Un) &  !(self.tractor[packet.htid].alloc_hint) ) then
          if !(self.tractor[packet.htid].lateMfsLkupNeeded) then
            self.ifa[self.tractor[packet.htid].ifa_id].FOrDData := FOrDDataState__F;
            self.tractor[packet.htid].data_sent := True;
          endif;
        endif;
      endif;
    endif;
end;

procedure HBo__recv_CAResp(var self: HBo; var packet: UPIPacket);
var
  resp_opcode: Resp_Op;
begin
    self.tractor[packet.htid].ro_count := (self.tractor[packet.htid].ro_count - 1);
    if (packet.opcode=UPI_Opcode__RspI | packet.opcode=UPI_Opcode__RspIWb | packet.opcode=UPI_Opcode__RspFwdID | packet.opcode=UPI_Opcode__RspFwdIWb | packet.opcode=UPI_Opcode__RspFwdIC ) then
      resp_opcode := Resp_Op__Rsp2I;
    elsif (packet.opcode=UPI_Opcode__RspS | packet.opcode=UPI_Opcode__RspSWb | packet.opcode=UPI_Opcode__RspFwdSWb | packet.opcode=UPI_Opcode__RspFwdS ) then
      resp_opcode := Resp_Op__Rsp2S;
    elsif (packet.opcode=UPI_Opcode__RspCurData ) then
      resp_opcode := Resp_Op__Unknown;
    elsif (packet.opcode=UPI_Opcode__RspE ) then
      resp_opcode := Resp_Op__Rsp2E;
    else
      assert False " snoop response opcode mapping is not defined for  packet.opcode";
    endif;
    if (packet.opcode=UPI_Opcode__RspS | packet.opcode=UPI_Opcode__RspSWb ) then
      self.tractor[packet.htid].resp_state := CacheState__S;
    elsif (packet.opcode=UPI_Opcode__RspFwdID ) then
      self.tractor[packet.htid].resp_state := CacheState__M;
    elsif ((packet.opcode=UPI_Opcode__RspFwdS | packet.opcode=UPI_Opcode__RspFwdSWb ) &  (self.tractor[packet.htid].protocol = Protocol__UPI) &  (self.tractor[packet.htid].uopcode=UPI_Opcode__RdCode | self.tractor[packet.htid].uopcode=UPI_Opcode__RdData | self.tractor[packet.htid].uopcode=UPI_Opcode__RdDataMig ) ) then
      self.tractor[packet.htid].resp_state := CacheState__S;
    elsif ((packet.opcode=UPI_Opcode__RspIWb ) &  (self.tractor[packet.htid].protocol = Protocol__UPI) &  (self.tractor[packet.htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[packet.htid].uopcode=UPI_Opcode__RdDataMig ) ) then
      self.tractor[packet.htid].resp_state := CacheState__M;
    endif;
    if (packet.opcode=UPI_Opcode__RspIWb | packet.opcode=UPI_Opcode__RspSWb ) then
      self.tractor[packet.htid].snoop_data_recvd := True;
      self.tractor[packet.htid].data := packet.data;
      self.tractor[packet.htid].wb_recvd := True;
      self.tractor[packet.htid].be := packet.be;
      if (self.tractor[packet.htid].coh_op = Coh_Op__Flush) then
        if mem_abstracted then
          self.mem[self.tractor[packet.htid].address] := packet.data;
        endif;
      endif;
      if (self.tractor[packet.htid].prlrd_req_sent &  !(self.tractor[packet.htid].prlrd_resp_recvd) ) then
        self.ifa[self.tractor[packet.htid].ifa_id].FOrDData := FOrDDataState__D;
        if self.tractor[packet.htid].data_sent then
          self.tractor[packet.htid].data_sent := False;
        endif;
      endif;
    elsif (packet.opcode=UPI_Opcode__RspFwdID | packet.opcode=UPI_Opcode__RspFwdIWb | packet.opcode=UPI_Opcode__RspFwdIC | packet.opcode=UPI_Opcode__RspFwdSWb | packet.opcode=UPI_Opcode__RspFwdS ) then
      self.tractor[packet.htid].data_sent := True;
      if (packet.opcode=UPI_Opcode__RspFwdIWb | packet.opcode=UPI_Opcode__RspFwdSWb ) then
        self.tractor[packet.htid].snoop_data_recvd := True;
        self.tractor[packet.htid].data := packet.data;
        self.tractor[packet.htid].wb_recvd := True;
        self.tractor[packet.htid].be := packet.be;
        if mem_abstracted then
          self.mem[self.tractor[packet.htid].address] := packet.data;
        endif;
      endif;
      if (self.tractor[packet.htid].prlrd_req_sent &  !(self.tractor[packet.htid].prlrd_resp_recvd) ) then
        self.ifa[self.tractor[packet.htid].ifa_id].FOrDData := FOrDDataState__D;
      endif;
    elsif (packet.opcode=UPI_Opcode__RspCurData ) then
      self.tractor[packet.htid].snoop_data_recvd := True;
      self.tractor[packet.htid].data := packet.data;
      self.tractor[packet.htid].be := packet.be;
      if (self.tractor[packet.htid].prlrd_req_sent &  !(self.tractor[packet.htid].prlrd_resp_recvd) ) then
        self.ifa[self.tractor[packet.htid].ifa_id].FOrDData := FOrDDataState__D;
        if self.tractor[packet.htid].data_sent then
          self.tractor[packet.htid].data_sent := False;
        endif;
      endif;
    elsif (packet.opcode=UPI_Opcode__RspE ) then
      if (self.tractor[packet.htid].prlrd_req_sent &  !(self.tractor[packet.htid].prlrd_resp_recvd) &  !(self.tractor[packet.htid].alloc_hint) &  !(self.tractor[packet.htid].lateMfsLkupNeeded) ) then
        self.ifa[self.tractor[packet.htid].ifa_id].FOrDData := FOrDDataState__F;
        self.tractor[packet.htid].data_sent := True;
      endif;
    endif;
    if (self.tractor[packet.htid].coh_op=Coh_Op__Get_SE | self.tractor[packet.htid].coh_op=Coh_Op__Get_S ) then
      if (HBo__detect_CA_type(self, self.tractor[packet.htid].agent_id, self.tractor[packet.htid].protocol)=CA_type__SOT | HBo__detect_CA_type(self, self.tractor[packet.htid].agent_id, self.tractor[packet.htid].protocol)=CA_type__FTS ) then
        if (resp_opcode = Resp_Op__Rsp2S) then
          self.tractor[packet.htid].limit_S := True;
        endif;
      endif;
      if self.tractor[packet.htid].limit_S then
        if (self.tractor[packet.htid].prlrd_req_sent &  !(self.tractor[packet.htid].prlrd_resp_recvd) ) then
          self.ifa[self.tractor[packet.htid].ifa_id].dataE := False;
        endif;
      endif;
    elsif (self.tractor[packet.htid].coh_op=Coh_Op__NoInvSnp_RdCur ) then
      if (HBo__detect_CA_type(self, self.tractor[packet.htid].agent_id, self.tractor[packet.htid].protocol)=CA_type__SOT | HBo__detect_CA_type(self, self.tractor[packet.htid].agent_id, self.tractor[packet.htid].protocol)=CA_type__FTS | HBo__detect_CA_type(self, self.tractor[packet.htid].agent_id, self.tractor[packet.htid].protocol)=CA_type__EXC ) then
        if self.tractor[packet.htid].sf_hit then
          if !(self.tractor[packet.htid].next_sf_state.CV_format) then
            if (SFEntry__count_cv_bits_1(self.tractor[packet.htid].next_sf_state) = 1) then
              if (resp_opcode = Resp_Op__Rsp2I) then
                SFEntry__release_sfentry(self.tractor[packet.htid].next_sf_state);
              endif;
            endif;
          elsif (resp_opcode = Resp_Op__Rsp2I) then
            SFEntry__release_sfentry(self.tractor[packet.htid].next_sf_state);
          endif;
        endif;
      endif;
    endif;
    if ((self.tractor[packet.htid].ro_count = 0) &  HBo__all_needed_peers_are_snooped(self, packet.htid) &  (!(self.tractor[packet.htid].one_fwd_resp_idic) |  self.tractor[packet.htid].snoop_data_recvd ) ) then
      self.tractor[packet.htid].snpdone := True;
      HBo__late_sf_update(self, packet.htid, self.tractor[packet.htid].address);
      if (self.tractor[packet.htid].prlrd_req_sent &  !(self.tractor[packet.htid].prlrd_resp_recvd) ) then
        self.ifa[self.tractor[packet.htid].ifa_id].snpRspDone := True;
        if ((self.ifa[self.tractor[packet.htid].ifa_id].FOrDData = FOrDDataState__Un) &  !(self.tractor[packet.htid].alloc_hint) ) then
          if !(self.tractor[packet.htid].lateMfsLkupNeeded) then
            self.ifa[self.tractor[packet.htid].ifa_id].FOrDData := FOrDDataState__F;
            self.tractor[packet.htid].data_sent := True;
          endif;
        endif;
      endif;
    endif;
end;

procedure HBo__recv_CAReq(var self: HBo; var packet: UPIPacket);
var
  idx: HTID;
begin
    Guard((HBo__is_available_TractorEntry(self) |  ((packet.opcode=UPI_Opcode__ReqFwdCnflt | packet.opcode=UPI_Opcode__WbMtoI | packet.opcode=UPI_Opcode__WbMtoS | packet.opcode=UPI_Opcode__WbMtoE | packet.opcode=UPI_Opcode__WbEtoI | packet.opcode=UPI_Opcode__WbMtoIPtl | packet.opcode=UPI_Opcode__WbMtoEPtl ) &  !(self.tractor[(MAX_HTID - 1)].valid) ) ));
    if isundefined(guard_failed) then
      if HBo__is_available_TractorEntry(self) then
        idx := HBo__available_TractorEntry(self);
      else
        idx := (MAX_HTID - 1);
      endif;
    TractorEntry__load_upi_packet(self.tractor[idx], packet);
      if (packet.opcode=UPI_Opcode__RdCode | packet.opcode=UPI_Opcode__RdData | packet.opcode=UPI_Opcode__RdDataMig | packet.opcode=UPI_Opcode__RdInvOwn | packet.opcode=UPI_Opcode__InvXtoI | packet.opcode=UPI_Opcode__InvItoE | packet.opcode=UPI_Opcode__RdInv | packet.opcode=UPI_Opcode__InvItoM | packet.opcode=UPI_Opcode__RdCur ) then
        if self.coh_ll[packet.address].valid then
          self.tractor[self.coh_ll[packet.address].tail].next_entry_c := idx;
          self.coh_ll[packet.address].tail := idx;
        else
          self.coh_ll[packet.address].valid := True;
          self.coh_ll[packet.address].head := idx;
          self.coh_ll[packet.address].tail := idx;
        endif;
      elsif ((packet.opcode=UPI_Opcode__ReqFwdCnflt | packet.opcode=UPI_Opcode__WbMtoI | packet.opcode=UPI_Opcode__WbMtoS | packet.opcode=UPI_Opcode__WbMtoE | packet.opcode=UPI_Opcode__WbEtoI | packet.opcode=UPI_Opcode__WbMtoIPtl | packet.opcode=UPI_Opcode__WbMtoEPtl ) &  !((packet.opcode = UPI_Opcode__ReqFwdCnflt)) ) then
        if self.mem_ll[packet.address].valid then
          self.tractor[self.mem_ll[packet.address].tail].next_entry_m := idx;
          self.mem_ll[packet.address].tail := idx;
        else
          self.mem_ll[packet.address].valid := True;
          self.mem_ll[packet.address].head := idx;
          self.mem_ll[packet.address].tail := idx;
        endif;
        self.tractor[idx].in_mem_domain := True;
      endif;
      if mem_abstracted then
        if (packet.opcode=UPI_Opcode__WbMtoI | packet.opcode=UPI_Opcode__WbMtoS | packet.opcode=UPI_Opcode__WbMtoE ) then
          self.mem[packet.address] := packet.data;
        elsif (packet.opcode=UPI_Opcode__WbMtoIPtl | packet.opcode=UPI_Opcode__WbMtoEPtl ) then
          for word: Word do
              if packet.be[word] then
                self.mem[packet.address][word] := packet.data[word];
              endif;
          endfor;
        endif;
      elsif (packet.opcode=UPI_Opcode__WbMtoI | packet.opcode=UPI_Opcode__WbMtoS | packet.opcode=UPI_Opcode__WbMtoE ) then
        self.tractor[idx].mem_op_init := Mem_Op__Write_M;
        self.tractor[idx].be := packet.be;
        self.tractor[idx].mem_op_assigned := True;
        self.tractor[idx].data := packet.data;
        if mufasa_mode then
          self.tractor[idx].lateMfsLkupNeeded := True;
        endif;
      elsif (packet.opcode=UPI_Opcode__WbEtoI ) then
        self.tractor[idx].mem_op_init := Mem_Op__Write_E;
        self.tractor[idx].be := packet.be;
        self.tractor[idx].mem_op_assigned := True;
        self.tractor[idx].data := packet.data;
        if mufasa_mode then
          self.tractor[idx].lateMfsLkupNeeded := True;
        endif;
      elsif (packet.opcode=UPI_Opcode__WbMtoIPtl | packet.opcode=UPI_Opcode__WbMtoEPtl ) then
        self.tractor[idx].mem_op_init := Mem_Op__Write_P;
        self.tractor[idx].be := packet.be;
        self.tractor[idx].mem_op_assigned := True;
        self.tractor[idx].data := packet.data;
        if mufasa_mode then
          self.tractor[idx].lateMfsLkupNeeded := True;
        endif;
      endif;
      if ((packet.opcode=UPI_Opcode__ReqFwdCnflt | packet.opcode=UPI_Opcode__WbMtoI | packet.opcode=UPI_Opcode__WbMtoS | packet.opcode=UPI_Opcode__WbMtoE | packet.opcode=UPI_Opcode__WbEtoI | packet.opcode=UPI_Opcode__WbMtoIPtl | packet.opcode=UPI_Opcode__WbMtoEPtl ) &  !((packet.opcode = UPI_Opcode__ReqFwdCnflt)) ) then
        if (self.coh_ll[packet.address].valid &  !(self.tractor[self.coh_ll[packet.address].head].in_mem_domain) ) then
          if mufasa_mode then
            self.tractor[self.coh_ll[packet.address].head].lateMfsLkupNeeded := True;
          endif;
          if self.tractor[self.coh_ll[packet.address].head].prlrd_req_sent then
            if !(self.tractor[self.coh_ll[packet.address].head].prlrd_resp_recvd) then
              self.ifa[self.tractor[self.coh_ll[packet.address].head].ifa_id].FOrDData := FOrDDataState__D;
              if self.tractor[self.coh_ll[packet.address].head].data_sent then
                self.tractor[self.coh_ll[packet.address].head].data_sent := False;
              endif;
            endif;
          endif;
        endif;
      endif;
      if ((!(packet.opcode=UPI_Opcode__ReqFwdCnflt) ) &  packet.alloc_hint &  mufasa_mode ) then
        self.tractor[idx].lateMfsLkupNeeded := True;
      endif;
    endif;
end;

function HBo__no_other_active_snooping_req_for_same_address(var self: HBo; htid: HTID):boolean;
begin
    for id: HTID do
        if (self.tractor[id].valid &  (id != htid) &  (self.tractor[id].address = self.tractor[htid].address) &  (self.tractor[id].coh_op=Coh_Op__Get_SE | self.tractor[id].coh_op=Coh_Op__Get_S | self.tractor[id].coh_op=Coh_Op__Get_E | self.tractor[id].coh_op=Coh_Op__Wr_Inv | self.tractor[id].coh_op=Coh_Op__Flush | self.tractor[id].coh_op=Coh_Op__NoInvSnp_RdCur ) &  self.tractor[id].sf_lookup_done ) then
          return False;
        endif;
    endfor;
    return True;
end;

procedure HBo__early_MFS_lookup_phase(var self: HBo; htid: HTID);
var
  way: MFS_WAYS;
  way_found: Boolean;
begin
    Guard(self.tractor[htid].valid);
    if isundefined(guard_failed) then
    Guard(!(self.tractor[htid].mfs_lookup_done));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].protocol = Protocol__UPI)) |  (self.tractor[htid].uopcode=UPI_Opcode__RdCur | self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].protocol = Protocol__IDIC)) |  (self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF ) ));
    if isundefined(guard_failed) then
    Guard((self.coh_ll[self.tractor[htid].address].head = htid));
    if isundefined(guard_failed) then
    Guard(mufasa_mode);
    if isundefined(guard_failed) then
      way_found := False;
      for id: MFS_WAYS do
          if (self.mufasa[id].valid &  (self.mufasa[id].address = self.tractor[htid].address) ) then
            way_found := True;
            way := id;
          endif;
      endfor;
      if way_found then
        self.tractor[htid].mfs_hit := True;
        self.tractor[htid].mfs_way := way;
        self.tractor[htid].mfs_state := self.mufasa[way].state;
        assert (self.mufasa[way].state != MFSState__I) " mufasa way with I state found";
      else
        self.tractor[htid].mfs_state := MFSState__I;
      endif;
      self.tractor[htid].mfs_lookup_done := True;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

function HBo__is_available_sf_way(var self: HBo):boolean;
begin
    for id: SF_WAYS do
        if !(self.sf[id].valid) then
          return True;
        endif;
    endfor;
    return False;
end;

function HBo__available_sf_way(var self: HBo):SF_WAYS;
begin
    for id: SF_WAYS do
        if !(self.sf[id].valid) then
          return id;
        endif;
    endfor;
end;

procedure HBo__start_sf_victim(var self: HBo; htid: HTID);
var
  tag_match: boolean;
  sf_way: SF_WAYS;
begin
    Guard(self.tractor[htid].valid);
    if isundefined(guard_failed) then
    Guard(!(self.tractor[htid].sf_lookup_done));
    if isundefined(guard_failed) then
    Guard(((self.coh_ll[self.tractor[htid].address].valid &  (self.coh_ll[self.tractor[htid].address].head = htid) ) |  (self.mem_ll[self.tractor[htid].address].valid &  (self.mem_ll[self.tractor[htid].address].head = htid) ) ));
    if isundefined(guard_failed) then
      tag_match := False;
      for id: SF_WAYS do
          if (self.sf[id].valid &  (self.sf[id].address = self.tractor[htid].address) ) then
            tag_match := True;
            sf_way := id;
            self.tractor[htid].sf_hit := True;
            self.tractor[htid].sf_way := id;
            self.tractor[htid].next_sf_state := self.sf[id];
          endif;
      endfor;
    Guard((!(tag_match) &  (self.tractor[htid].coh_op=Coh_Op__Get_S | self.tractor[htid].coh_op=Coh_Op__Get_SE | self.tractor[htid].coh_op=Coh_Op__Get_E ) &  (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)=CA_type__FTS | HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)=CA_type__EXC ) &  !(HBo__is_available_sf_way(self)) ));
    if isundefined(guard_failed) then
    endif;
    endif;
    endif;
    endif;
end;

function HBo__is_possible_sf_alloc(var self: HBo):boolean;
begin
    for id: SF_WAYS do
        if !(self.sf[id].valid) then
          return True;
        endif;
    endfor;
    for id: SF_WAYS do
        if !(self.sf[id].allocAvoid) then
          return True;
        endif;
    endfor;
    return False;
end;

function HBo__possible_sf_alloc(var self: HBo):SF_WAYS;
begin
    for id: SF_WAYS do
        if !(self.sf[id].valid) then
          return id;
        endif;
    endfor;
    for id: SF_WAYS do
        if !(self.sf[id].allocAvoid) then
          return id;
        endif;
    endfor;
end;

procedure HBo__SF_lookup_phase(var self: HBo; htid: HTID; choice: Boolean);
var
  all_cv_bits_fts_0: boolean;
  upi_is_owner: boolean;
  tag_match: boolean;
  sf_way: SF_WAYS;
  avail_way: SF_WAYS;
  vic_htid: HTID;
begin
    Guard(self.tractor[htid].valid);
    if isundefined(guard_failed) then
    Guard(!(self.tractor[htid].sf_lookup_done));
    if isundefined(guard_failed) then
    Guard(((self.coh_ll[self.tractor[htid].address].valid &  (self.coh_ll[self.tractor[htid].address].head = htid) ) |  (self.mem_ll[self.tractor[htid].address].valid &  (self.mem_ll[self.tractor[htid].address].head = htid) ) ));
    if isundefined(guard_failed) then
      all_cv_bits_fts_0 := True;
      upi_is_owner := False;
      tag_match := False;
      for id: SF_WAYS do
          if (self.sf[id].valid &  (self.sf[id].address = self.tractor[htid].address) ) then
            tag_match := True;
            sf_way := id;
            self.tractor[htid].sf_hit := True;
            self.tractor[htid].sf_way := id;
            self.tractor[htid].next_sf_state := self.sf[id];
          endif;
      endfor;
    Guard((tag_match |  (!(((self.tractor[htid].coh_op=Coh_Op__Get_S | self.tractor[htid].coh_op=Coh_Op__Get_SE | self.tractor[htid].coh_op=Coh_Op__Get_E ) &  (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)=CA_type__FTS | HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)=CA_type__EXC ) )) |  HBo__is_available_sf_way(self) ) ));
    if isundefined(guard_failed) then
      if tag_match then
        self.sf[sf_way].allocAvoid := True;
      elsif ((self.tractor[htid].coh_op=Coh_Op__Get_S | self.tractor[htid].coh_op=Coh_Op__Get_SE | self.tractor[htid].coh_op=Coh_Op__Get_E ) &  (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)=CA_type__FTS | HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)=CA_type__EXC ) ) then
        if HBo__is_available_sf_way(self) then
          avail_way := HBo__available_sf_way(self);
        endif;
        self.sf[avail_way].allocAvoid := True;
        self.tractor[htid].sf_hit := True;
        self.tractor[htid].sf_way := avail_way;
      endif;
      if (self.tractor[htid].coh_op=Coh_Op__Get_S ) then
        if (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__SOT) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpCode;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCode;
                    endif;
                  elsif !((self.tractor[htid].protocol = Protocol__UPI)) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCode;
                  endif;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCode;
                  elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCode;
                  endif;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpCode;
                      else
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCode;
                      endif;
                    elsif !((self.tractor[htid].protocol = Protocol__UPI)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCode;
                    endif;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCode;
                    elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCode;
                    endif;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              self.tractor[htid].snpneeded := True;
              for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpCode;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCode;
                    endif;
                  endif;
              endfor;
              for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCode;
                  endif;
              endfor;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) > 1) then
              if (self.tractor[htid].protocol = Protocol__UPI) then
                self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] := True;
              elsif (self.tractor[htid].protocol = Protocol__IDIC) then
                self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] := True;
              endif;
              self.tractor[htid].limit_S := True;
              self.tractor[htid].sf_update_done := True;
            endif;
          elsif self.sf[sf_way].CV_format then
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__FTS) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpCode;
                  else
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCode;
                  endif;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCode;
              endfor;
            endif;
            if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
              self.sf[avail_way].CV_format := False;
              self.sf[avail_way].valid := True;
              self.sf[avail_way].address := self.tractor[htid].address;
              if (self.tractor[htid].protocol = Protocol__UPI) then
                self.sf[avail_way].CV_bits_upi[self.tractor[htid].agent_id] := True;
              else
                self.sf[avail_way].CV_bits_idic[self.tractor[htid].agent_id] := True;
              endif;
              self.tractor[htid].sf_update_done := True;
            endif;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpCode;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCode;
                    endif;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCode;
                endfor;
              endif;
              if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
                self.sf[sf_way].CV_format := False;
                self.sf[sf_way].valid := True;
                self.sf[sf_way].address := self.tractor[htid].address;
                if (self.tractor[htid].protocol = Protocol__UPI) then
                  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] := True;
                else
                  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] := True;
                endif;
                self.tractor[htid].sf_update_done := True;
              endif;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              if (((self.tractor[htid].protocol = Protocol__UPI) &  !(self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id]) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  !(self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id]) ) ) then
                self.tractor[htid].snpneeded := True;
                for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                    if self.sf[sf_way].CV_bits_upi[id] then
                      self.tractor[htid].upi_snoop_target[id] := True;
                      if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpCode;
                      else
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCode;
                      endif;
                    endif;
                endfor;
                for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                    if self.sf[sf_way].CV_bits_idic[id] then
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCode;
                    endif;
                endfor;
              elsif ((((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) &  self.tractor[htid].selfsnp ) then
                self.tractor[htid].snpneeded := True;
                if ((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) then
                  self.tractor[htid].idic_snoop_target[self.tractor[htid].agent_id] := True;
                  self.tractor[htid].idic_snoop_opcode[self.tractor[htid].agent_id] := IDI_Opcode__BackInv;
                elsif ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) then
                  self.tractor[htid].upi_snoop_target[self.tractor[htid].agent_id] := True;
                  self.tractor[htid].upi_snoop_opcode[self.tractor[htid].agent_id] := UPI_Opcode__SnpLInv;
                endif;
                self.tractor[htid].sf_update_done := True;
              elsif ((((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) &  !(self.tractor[htid].selfsnp) ) then
                self.tractor[htid].sf_update_done := True;
              else
                assert False "case is not covered in sf lookup phase";
              endif;
            elsif (((self.tractor[htid].protocol = Protocol__UPI) &  !(self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id]) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  !(self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id]) ) ) then
              self.tractor[htid].sf_update_done := True;
              self.tractor[htid].limit_S := True;
              if ((self.tractor[htid].protocol = Protocol__UPI) &  !(self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id]) ) then
                self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] := True;
              elsif ((self.tractor[htid].protocol = Protocol__IDIC) &  !(self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id]) ) then
                self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] := True;
              endif;
            elsif (((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) then
              if !(self.tractor[htid].selfsnp) then
                self.tractor[htid].sf_update_done := True;
                self.tractor[htid].limit_S := True;
              elsif choice then
                self.tractor[htid].sf_update_done := True;
                self.tractor[htid].limit_S := True;
              else
                self.tractor[htid].snpneeded := True;
                for id:= 0 to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                    if self.sf[sf_way].CV_bits_upi[id] then
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    endif;
                endfor;
                for id:= 0 to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                    if self.sf[sf_way].CV_bits_idic[id] then
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__BackInv;
                    endif;
                endfor;
              endif;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__EXC) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
              endfor;
            endif;
            if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
              self.tractor[htid].sf_update_done := True;
              self.sf[avail_way].CV_format := True;
              self.sf[avail_way].valid := True;
              self.sf[avail_way].address := self.tractor[htid].address;
              self.sf[avail_way].owner_id := self.tractor[htid].agent_id;
              if (self.tractor[htid].protocol = Protocol__UPI) then
                self.sf[avail_way].owner_protocol := Protocol__UPI;
              else
                self.sf[avail_way].owner_protocol := Protocol__IDIC;
              endif;
            endif;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                endfor;
              endif;
              if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
                self.tractor[htid].sf_update_done := True;
                self.sf[sf_way].CV_format := True;
                self.sf[sf_way].valid := True;
                self.sf[sf_way].address := self.tractor[htid].address;
                self.sf[sf_way].owner_id := self.tractor[htid].agent_id;
                if (self.tractor[htid].protocol = Protocol__UPI) then
                  self.sf[sf_way].owner_protocol := Protocol__UPI;
                else
                  self.sf[sf_way].owner_protocol := Protocol__IDIC;
                endif;
              endif;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) > 0) then
              self.tractor[htid].snpneeded := True;
              for id:= 0 to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    self.sf[sf_way].CV_bits_upi[id] := False;
                  endif;
              endfor;
              for id:= 0 to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                    self.sf[sf_way].CV_bits_idic[id] := False;
                  endif;
              endfor;
            endif;
          elsif ((self.sf[sf_way].owner_protocol = self.tractor[htid].protocol) &  (self.tractor[htid].agent_id = self.sf[sf_way].owner_id) ) then
            if self.tractor[htid].selfsnp then
              self.tractor[htid].snpneeded := True;
              if ((self.sf[sf_way].owner_protocol = Protocol__IDIC) &  (self.tractor[htid].protocol = Protocol__IDIC) ) then
                self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
                self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
              elsif ((self.sf[sf_way].owner_protocol = Protocol__UPI) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
                self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
              endif;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
            endif;
          endif;
        else
          assert False " SF lookup is not implemented yet for  HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)";
        endif;
        for id: MonitorSize do
            if (self.monitor[id].valid &  (self.monitor[id].address = self.tractor[htid].address) ) then
              self.tractor[htid].limit_S := True;
            endif;
        endfor;
      elsif (self.tractor[htid].coh_op=Coh_Op__Get_SE ) then
        if (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__SOT) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpData;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                    endif;
                  elsif !((self.tractor[htid].protocol = Protocol__UPI)) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                  endif;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                  elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                  endif;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpData;
                      else
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                      endif;
                    elsif !((self.tractor[htid].protocol = Protocol__UPI)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                    endif;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                    elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                    endif;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              self.tractor[htid].snpneeded := True;
              for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpData;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                    endif;
                  endif;
              endfor;
              for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                  endif;
              endfor;
            else
              if (self.tractor[htid].protocol = Protocol__UPI) then
                self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] := True;
              elsif (self.tractor[htid].protocol = Protocol__IDIC) then
                self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] := True;
              endif;
              self.tractor[htid].limit_S := True;
              self.tractor[htid].sf_update_done := True;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__FTS) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpData;
                  else
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                  endif;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
              endfor;
            endif;
            if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
              self.sf[avail_way].CV_format := False;
              self.sf[avail_way].valid := True;
              self.sf[avail_way].address := self.tractor[htid].address;
              if (self.tractor[htid].protocol = Protocol__UPI) then
                self.sf[avail_way].CV_bits_upi[self.tractor[htid].agent_id] := True;
              else
                self.sf[avail_way].CV_bits_idic[self.tractor[htid].agent_id] := True;
              endif;
              self.tractor[htid].sf_update_done := True;
            endif;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpData;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                    endif;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                endfor;
              endif;
              if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
                if (self.tractor[htid].protocol = Protocol__UPI) then
                  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] := True;
                else
                  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] := True;
                endif;
                self.tractor[htid].sf_update_done := True;
              endif;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              if (((self.tractor[htid].protocol = Protocol__UPI) &  !(self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id]) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  !(self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id]) ) ) then
                self.tractor[htid].snpneeded := True;
                for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                    if self.sf[sf_way].CV_bits_upi[id] then
                      self.tractor[htid].upi_snoop_target[id] := True;
                      if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpData;
                      else
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                      endif;
                    endif;
                endfor;
                for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                    if self.sf[sf_way].CV_bits_idic[id] then
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                    endif;
                endfor;
              elsif ((((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) &  self.tractor[htid].selfsnp ) then
                self.tractor[htid].snpneeded := True;
                if ((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) then
                  self.tractor[htid].idic_snoop_target[self.tractor[htid].agent_id] := True;
                  self.tractor[htid].idic_snoop_opcode[self.tractor[htid].agent_id] := IDI_Opcode__BackInv;
                elsif ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) then
                  self.tractor[htid].upi_snoop_target[self.tractor[htid].agent_id] := True;
                  self.tractor[htid].upi_snoop_opcode[self.tractor[htid].agent_id] := UPI_Opcode__SnpLInv;
                endif;
                self.tractor[htid].sf_update_done := True;
              elsif ((((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) &  !(self.tractor[htid].selfsnp) ) then
                self.tractor[htid].sf_update_done := True;
              else
                assert False "case is not covered in sf lookup phase";
              endif;
            elsif (((self.tractor[htid].protocol = Protocol__UPI) &  !(self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id]) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  !(self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id]) ) ) then
              self.tractor[htid].sf_update_done := True;
              self.tractor[htid].limit_S := True;
              if ((self.tractor[htid].protocol = Protocol__UPI) &  !(self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id]) ) then
                self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] := True;
              elsif ((self.tractor[htid].protocol = Protocol__IDIC) &  !(self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id]) ) then
                self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] := True;
              endif;
            elsif (((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) then
              if !(self.tractor[htid].selfsnp) then
                self.tractor[htid].sf_update_done := True;
                self.tractor[htid].limit_S := True;
              elsif choice then
                self.tractor[htid].sf_update_done := True;
                self.tractor[htid].limit_S := True;
              else
                self.tractor[htid].snpneeded := True;
                for id:= 0 to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                    if self.sf[sf_way].CV_bits_upi[id] then
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    endif;
                endfor;
                for id:= 0 to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                    if self.sf[sf_way].CV_bits_idic[id] then
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__BackInv;
                    endif;
                endfor;
              endif;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__EXC) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
              endfor;
            endif;
            if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
              self.tractor[htid].sf_update_done := True;
              self.sf[avail_way].CV_format := True;
              self.sf[avail_way].valid := True;
              self.sf[avail_way].address := self.tractor[htid].address;
              self.sf[avail_way].owner_id := self.tractor[htid].agent_id;
              if (self.tractor[htid].protocol = Protocol__UPI) then
                self.sf[avail_way].owner_protocol := Protocol__UPI;
              else
                self.sf[avail_way].owner_protocol := Protocol__IDIC;
              endif;
            endif;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                endfor;
              endif;
              if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
                self.tractor[htid].sf_update_done := True;
                self.sf[sf_way].CV_format := True;
                self.sf[sf_way].owner_id := self.tractor[htid].agent_id;
                if (self.tractor[htid].protocol = Protocol__UPI) then
                  self.sf[sf_way].owner_protocol := Protocol__UPI;
                else
                  self.sf[sf_way].owner_protocol := Protocol__IDIC;
                endif;
              endif;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) > 0) then
              self.tractor[htid].snpneeded := True;
              for id:= 0 to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    self.sf[sf_way].CV_bits_upi[id] := False;
                  endif;
              endfor;
              for id:= 0 to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                    self.sf[sf_way].CV_bits_idic[id] := False;
                  endif;
              endfor;
            endif;
          elsif ((self.sf[sf_way].owner_protocol = self.tractor[htid].protocol) &  (self.tractor[htid].agent_id = self.sf[sf_way].owner_id) ) then
            if self.tractor[htid].selfsnp then
              self.tractor[htid].snpneeded := True;
              if ((self.sf[sf_way].owner_protocol = Protocol__IDIC) &  (self.tractor[htid].protocol = Protocol__IDIC) ) then
                self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
                self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
              elsif ((self.sf[sf_way].owner_protocol = Protocol__UPI) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
                self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
              endif;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
            endif;
          endif;
        else
          assert False " SF lookup is not implemented yet for  HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)";
        endif;
        for id: MonitorSize do
            if (self.monitor[id].valid &  (self.monitor[id].address = self.tractor[htid].address) ) then
              self.tractor[htid].limit_S := True;
            endif;
        endfor;
      elsif (self.tractor[htid].coh_op = Coh_Op__Get_E) then
        if (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__SOT) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    endif;
                  elsif !((self.tractor[htid].protocol = Protocol__UPI)) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                  endif;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                  elsif ((self.tractor[htid].protocol = Protocol__IDIC) &  self.tractor[htid].selfsnp ) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                  elsif (self.tractor[htid].protocol = Protocol__UPI) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                  endif;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                      else
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                      endif;
                    elsif !((self.tractor[htid].protocol = Protocol__UPI)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    endif;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                    elsif ((self.tractor[htid].protocol = Protocol__IDIC) &  self.tractor[htid].selfsnp ) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                    elsif (self.tractor[htid].protocol = Protocol__UPI) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                    endif;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) > 0) then
              for id: SOTFTSUPIAgents do
                  if (self.sf[sf_way].CV_bits_upi[id] &  (!((self.tractor[htid].agent_id = id)) |  (self.tractor[htid].protocol != Protocol__UPI) ) ) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    endif;
                  endif;
              endfor;
              for id: SOTFTSIDICAgents do
                  if (self.sf[sf_way].CV_bits_idic[id] &  (!((self.tractor[htid].agent_id = id)) |  (self.tractor[htid].protocol != Protocol__IDIC) ) ) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                  endif;
              endfor;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpInvOwn;
              else
                self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
              endif;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__FTS) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                  else
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                  endif;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
              endfor;
            endif;
            if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
              self.tractor[htid].sf_update_done := True;
              self.sf[avail_way].CV_format := False;
              self.sf[avail_way].valid := True;
              self.sf[avail_way].address := self.tractor[htid].address;
              if (self.tractor[htid].protocol = Protocol__UPI) then
                self.sf[avail_way].CV_bits_upi[self.tractor[htid].agent_id] := True;
              else
                self.sf[avail_way].CV_bits_idic[self.tractor[htid].agent_id] := True;
              endif;
            endif;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    endif;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                endfor;
              endif;
              if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
                self.tractor[htid].sf_update_done := True;
                self.sf[sf_way].CV_format := False;
                self.sf[sf_way].valid := True;
                self.sf[sf_way].address := self.tractor[htid].address;
                if (self.tractor[htid].protocol = Protocol__UPI) then
                  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] := True;
                else
                  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] := True;
                endif;
              endif;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              if (((self.tractor[htid].protocol = Protocol__UPI) &  !(self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id]) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  !(self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id]) ) ) then
                self.tractor[htid].snpneeded := True;
                for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                    if self.sf[sf_way].CV_bits_upi[id] then
                      self.tractor[htid].upi_snoop_target[id] := True;
                      if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                      else
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                      endif;
                    endif;
                endfor;
                for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                    if self.sf[sf_way].CV_bits_idic[id] then
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                    endif;
                endfor;
              elsif ((((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) &  self.tractor[htid].selfsnp ) then
                self.tractor[htid].snpneeded := True;
                self.tractor[htid].sf_update_done := True;
                if ((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) then
                  self.tractor[htid].idic_snoop_target[self.tractor[htid].agent_id] := True;
                  self.tractor[htid].idic_snoop_opcode[self.tractor[htid].agent_id] := IDI_Opcode__SnpInv;
                endif;
              elsif ((((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) &  !(self.tractor[htid].selfsnp) ) then
                self.tractor[htid].sf_update_done := True;
              else
                assert False "case is not covered in sf lookup phase";
              endif;
            else
              for id: SOTFTSUPIAgents do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    if ((id = self.tractor[htid].agent_id) &  (self.tractor[htid].protocol = Protocol__UPI) ) then
                      if self.tractor[htid].selfsnp then
                        self.tractor[htid].snpneeded := True;
                        self.tractor[htid].upi_snoop_target[id] := True;
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                      endif;
                    else
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                      else
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                      endif;
                    endif;
                  endif;
              endfor;
              for id: SOTFTSIDICAgents do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    if ((id = self.tractor[htid].agent_id) &  (self.tractor[htid].protocol = Protocol__IDIC) ) then
                      if self.tractor[htid].selfsnp then
                        self.tractor[htid].snpneeded := True;
                        self.tractor[htid].idic_snoop_target[id] := True;
                        self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                      endif;
                    else
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                      self.sf[sf_way].CV_bits_idic[id] := False;
                    endif;
                  endif;
              endfor;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpInvOwn;
              else
                self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
              endif;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__EXC) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                  else
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                  endif;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
              endfor;
            endif;
            if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
              self.tractor[htid].sf_update_done := True;
              self.sf[avail_way].CV_format := True;
              self.sf[avail_way].valid := True;
              self.sf[avail_way].address := self.tractor[htid].address;
              self.sf[avail_way].owner_id := self.tractor[htid].agent_id;
              if (self.tractor[htid].protocol = Protocol__UPI) then
                self.sf[avail_way].owner_protocol := Protocol__UPI;
              else
                self.sf[avail_way].owner_protocol := Protocol__IDIC;
              endif;
            endif;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    endif;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                endfor;
              endif;
              if (!(UPI_SOT_VALID) &  !(IDIC_SOT_VALID) ) then
                self.tractor[htid].sf_update_done := True;
                self.sf[sf_way].CV_format := True;
                self.sf[sf_way].valid := True;
                self.sf[sf_way].address := self.tractor[htid].address;
                self.sf[sf_way].owner_id := self.tractor[htid].agent_id;
                if (self.tractor[htid].protocol = Protocol__UPI) then
                  self.sf[sf_way].owner_protocol := Protocol__UPI;
                else
                  self.sf[sf_way].owner_protocol := Protocol__IDIC;
                endif;
              endif;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) > 0) then
              self.tractor[htid].snpneeded := True;
              for id: SOTFTSUPIAgents do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    endif;
                  endif;
              endfor;
              for id: SOTFTSIDICAgents do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                  endif;
              endfor;
            endif;
          elsif ((self.tractor[htid].agent_id = self.sf[sf_way].owner_id) &  (self.tractor[htid].protocol = self.sf[sf_way].owner_protocol) ) then
            if self.tractor[htid].selfsnp then
              if (self.tractor[htid].protocol = Protocol__IDIC) then
                self.tractor[htid].snpneeded := True;
                self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
                self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
              endif;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpInvOwn;
              else
                self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
              endif;
            endif;
          endif;
        else
          assert False " SF lookup is not implemented yet for  HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)";
        endif;
        for id: MonitorSize do
            if (self.monitor[id].valid &  (self.monitor[id].address = self.tractor[htid].address) ) then
              self.tractor[htid].idic_snoop_target[self.monitor[id].agent_id] := True;
              self.tractor[htid].snpneeded := True;
              self.tractor[htid].idic_snoop_opcode[self.monitor[id].agent_id] := IDI_Opcode__SnpInv;
            endif;
        endfor;
      elsif (self.tractor[htid].coh_op=Coh_Op__Wr_Inv | self.tractor[htid].coh_op=Coh_Op__Flush ) then
        if (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__SOT) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    endif;
                  else
                    if !((self.tractor[htid].protocol = Protocol__UPI)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                    endif;
                    if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                    else
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    endif;
                  endif;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                  elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                  endif;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                      else
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                      endif;
                    else
                      if !((self.tractor[htid].protocol = Protocol__UPI)) then
                        self.tractor[htid].snpneeded := True;
                        self.tractor[htid].upi_snoop_target[id] := True;
                      endif;
                      if (!(C2C_DISABLED) &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) ) then
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpInvOwn;
                      else
                        self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                      endif;
                    endif;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                    elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                    endif;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) > 0) then
              for id: SOTFTSUPIAgents do
                  if (self.sf[sf_way].CV_bits_upi[id] &  (!((self.tractor[htid].agent_id = id)) |  (self.tractor[htid].protocol != Protocol__UPI) ) ) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                  endif;
              endfor;
              for id: SOTFTSIDICAgents do
                  if (self.sf[sf_way].CV_bits_idic[id] &  (!((self.tractor[htid].agent_id = id)) |  (self.tractor[htid].protocol != Protocol__IDIC) ) ) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                  endif;
              endfor;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__FTS) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              if (((self.tractor[htid].protocol = Protocol__UPI) &  !(self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id]) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  !(self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id]) ) ) then
                self.tractor[htid].snpneeded := True;
                for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                    if self.sf[sf_way].CV_bits_upi[id] then
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                      self.sf[sf_way].CV_bits_upi[id] := False;
                    endif;
                endfor;
                for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                    if self.sf[sf_way].CV_bits_idic[id] then
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                      self.sf[sf_way].CV_bits_idic[id] := False;
                    endif;
                endfor;
              elsif (((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) then
                if self.tractor[htid].selfsnp then
                  if (self.tractor[htid].protocol = Protocol__IDIC) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[self.tractor[htid].agent_id] := True;
                    self.tractor[htid].idic_snoop_opcode[self.tractor[htid].agent_id] := IDI_Opcode__SnpInv;
                    self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] := False;
                  else
                    self.tractor[htid].sf_update_done := True;
                    SFEntry__release_sfentry(self.sf[sf_way]);
                  endif;
                else
                  self.tractor[htid].sf_update_done := True;
                  SFEntry__release_sfentry(self.sf[sf_way]);
                endif;
              else
                assert False "case is not covered in sf lookup phase";
              endif;
            else
              for id: SOTFTSUPIAgents do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    if !(((id = self.tractor[htid].agent_id) &  (self.tractor[htid].protocol = Protocol__UPI) )) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    endif;
                  endif;
              endfor;
              for id: SOTFTSIDICAgents do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    if ((id = self.tractor[htid].agent_id) &  (self.tractor[htid].protocol = Protocol__IDIC) ) then
                      if self.tractor[htid].selfsnp then
                        self.tractor[htid].snpneeded := True;
                        self.tractor[htid].idic_snoop_target[id] := True;
                        self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                      endif;
                    else
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                    endif;
                  endif;
              endfor;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__EXC) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) > 0) then
              self.tractor[htid].snpneeded := True;
              for id: SOTFTSUPIAgents do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLInv;
                    self.sf[sf_way].CV_bits_upi[id] := False;
                  endif;
              endfor;
              for id: SOTFTSIDICAgents do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpInv;
                    self.sf[sf_way].CV_bits_idic[id] := False;
                  endif;
              endfor;
            endif;
          elsif ((self.tractor[htid].agent_id = self.sf[sf_way].owner_id) &  (self.tractor[htid].protocol = self.sf[sf_way].owner_protocol) ) then
            if self.tractor[htid].selfsnp then
              if (self.tractor[htid].protocol = Protocol__IDIC) then
                self.tractor[htid].snpneeded := True;
                self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
                self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
              else
                self.tractor[htid].sf_update_done := True;
                SFEntry__release_sfentry(self.sf[sf_way]);
              endif;
            else
              self.tractor[htid].sf_update_done := True;
              SFEntry__release_sfentry(self.sf[sf_way]);
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLInv;
            endif;
          endif;
        else
          assert False " SF lookup is not implemented yet for  HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)";
        endif;
        if ((self.tractor[htid].coh_op = Coh_Op__Wr_Inv) |  treat_flush_as_wrinv ) then
          for id: MonitorSize do
              if (self.monitor[id].valid &  (self.monitor[id].address = self.tractor[htid].address) ) then
                self.tractor[htid].idic_snoop_target[self.monitor[id].agent_id] := True;
                self.tractor[htid].snpneeded := True;
                self.tractor[htid].idic_snoop_opcode[self.monitor[id].agent_id] := IDI_Opcode__SnpInv;
              endif;
          endfor;
        endif;
      elsif (self.tractor[htid].coh_op = Coh_Op__NoInvSnp_RdCur) then
        if (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__SOT) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCurr;
                  elsif !((self.tractor[htid].protocol = Protocol__UPI)) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCurr;
                  endif;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                  elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                  endif;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCurr;
                    elsif !((self.tractor[htid].protocol = Protocol__UPI)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCurr;
                    endif;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                    elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                    endif;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              self.tractor[htid].snpneeded := True;
              for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCurr;
                  endif;
              endfor;
              for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                  endif;
              endfor;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpCur;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLCurr;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__FTS) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCurr;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCurr;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              if (((self.tractor[htid].protocol = Protocol__UPI) &  !(self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id]) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  !(self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id]) ) ) then
                self.tractor[htid].snpneeded := True;
                for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                    if self.sf[sf_way].CV_bits_upi[id] then
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCurr;
                    endif;
                endfor;
                for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                    if self.sf[sf_way].CV_bits_idic[id] then
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                    endif;
                endfor;
              elsif (((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) then
                if self.tractor[htid].selfsnp then
                  if (self.tractor[htid].protocol = Protocol__IDIC) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[self.tractor[htid].agent_id] := True;
                    self.tractor[htid].idic_snoop_opcode[self.tractor[htid].agent_id] := IDI_Opcode__SnpCur;
                  else
                    self.tractor[htid].sf_update_done := True;
                  endif;
                else
                  self.tractor[htid].sf_update_done := True;
                endif;
              else
                assert False "case is not covered in sf lookup phase";
              endif;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpCur;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLCurr;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__EXC) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCurr;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCurr;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              self.tractor[htid].snpneeded := True;
              for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLCurr;
                  endif;
              endfor;
              for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                  endif;
              endfor;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          elsif ((self.tractor[htid].agent_id = self.sf[sf_way].owner_id) &  (self.sf[sf_way].owner_protocol = self.tractor[htid].protocol) ) then
            if self.tractor[htid].selfsnp then
              if (self.tractor[htid].protocol = Protocol__IDIC) then
                self.tractor[htid].snpneeded := True;
                self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
                self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpCur;
              else
                self.tractor[htid].sf_update_done := True;
              endif;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpCur;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLCurr;
            endif;
          endif;
        else
          assert False " SF lookup is not implemented yet for  HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)";
        endif;
      elsif (self.tractor[htid].coh_op = Coh_Op__WB_2I) then
        self.tractor[htid].sf_update_done := True;
        if (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__FTS) then
          if tag_match then
            if !(self.sf[sf_way].CV_format) then
              if (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
                if ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) then
                  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] := False;
                  SFEntry__release_sfentry(self.sf[sf_way]);
                elsif ((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) then
                  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] := False;
                  SFEntry__release_sfentry(self.sf[sf_way]);
                endif;
              elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) > 1) then
                if ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) then
                  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] := False;
                elsif ((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) then
                  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] := False;
                endif;
                all_cv_bits_fts_0 := True;
                for agent:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                    if self.sf[sf_way].CV_bits_upi[agent] then
                      all_cv_bits_fts_0 := False;
                    endif;
                endfor;
                for agent:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                    if self.sf[sf_way].CV_bits_idic[agent] then
                      all_cv_bits_fts_0 := False;
                    endif;
                endfor;
                if all_cv_bits_fts_0 then
                  for agent: SOTUPIAgents do
                      if self.sf[sf_way].CV_bits_upi[agent] then
                        self.sf[sf_way].CV_bits_upi[agent] := False;
                      endif;
                  endfor;
                  for agent: SOTIDICAgents do
                      if self.sf[sf_way].CV_bits_idic[agent] then
                        self.sf[sf_way].CV_bits_idic[agent] := False;
                      endif;
                  endfor;
                  SFEntry__release_sfentry(self.sf[sf_way]);
                endif;
              endif;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__EXC) then
          if tag_match then
            if self.sf[sf_way].CV_format then
              if ((self.tractor[htid].agent_id = self.sf[sf_way].owner_id) &  (self.tractor[htid].protocol = self.sf[sf_way].owner_protocol) ) then
                self.sf[sf_way].CV_format := False;
                undefine self.sf[sf_way].owner_protocol;
                undefine self.sf[sf_way].owner_id;
                SFEntry__release_sfentry(self.sf[sf_way]);
              endif;
            endif;
          endif;
        endif;
      elsif (self.tractor[htid].coh_op = Coh_Op__NoInvSnp_CLWB) then
        if (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__SOT) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                  elsif !((self.tractor[htid].protocol = Protocol__UPI)) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                  endif;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                  elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                  endif;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                    elsif !((self.tractor[htid].protocol = Protocol__UPI)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                    endif;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                    elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                    endif;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              self.tractor[htid].snpneeded := True;
              for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                  endif;
              endfor;
              for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                  endif;
              endfor;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpData;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLData;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__FTS) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              if (((self.tractor[htid].protocol = Protocol__UPI) &  !(self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id]) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  !(self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id]) ) ) then
                self.tractor[htid].snpneeded := True;
                for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                    if self.sf[sf_way].CV_bits_upi[id] then
                      self.tractor[htid].upi_snoop_target[id] := True;
                      self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                    endif;
                endfor;
                for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                    if self.sf[sf_way].CV_bits_idic[id] then
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                    endif;
                endfor;
              elsif (((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) then
                if self.tractor[htid].selfsnp then
                  if (self.tractor[htid].protocol = Protocol__IDIC) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[self.tractor[htid].agent_id] := True;
                    self.tractor[htid].idic_snoop_opcode[self.tractor[htid].agent_id] := IDI_Opcode__BackInv;
                  else
                    self.tractor[htid].sf_update_done := True;
                  endif;
                else
                  self.tractor[htid].sf_update_done := True;
                endif;
              else
                assert False "case is not covered in sf lookup phase";
              endif;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpData;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLData;
            endif;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__EXC) then
          if !(tag_match) then
            if UPI_SOT_VALID then
              for id: SOTUPIAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].upi_snoop_target[id] := True;
                  self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
              endfor;
            endif;
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if UPI_SOT_VALID then
                for id: SOTUPIAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                endfor;
              endif;
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              self.tractor[htid].snpneeded := True;
              for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    self.tractor[htid].upi_snoop_target[id] := True;
                    self.tractor[htid].upi_snoop_opcode[id] := UPI_Opcode__SnpLData;
                  endif;
              endfor;
              for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpData;
                  endif;
              endfor;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          elsif ((self.tractor[htid].agent_id = self.sf[sf_way].owner_id) &  (self.sf[sf_way].owner_protocol = self.tractor[htid].protocol) ) then
            if self.tractor[htid].selfsnp then
              if (self.tractor[htid].protocol = Protocol__IDIC) then
                self.tractor[htid].snpneeded := True;
                self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
                self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpInv;
              else
                self.tractor[htid].sf_update_done := True;
              endif;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          else
            self.tractor[htid].snpneeded := True;
            if (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
              self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpData;
            elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
              self.tractor[htid].upi_snoop_target[self.sf[sf_way].owner_id] := True;
              self.tractor[htid].upi_snoop_opcode[self.sf[sf_way].owner_id] := UPI_Opcode__SnpLData;
            endif;
          endif;
        else
          assert False " SF lookup is not implemented yet for  HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)";
        endif;
      elsif (self.tractor[htid].coh_op = Coh_Op__RdCurr_ns) then
        if (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__SOT) then
          if !(tag_match) then
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  if (self.tractor[htid].agent_id != id) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                  elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                  endif;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    if (self.tractor[htid].agent_id != id) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                    elsif !((self.tractor[htid].protocol = Protocol__IDIC)) then
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                    endif;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                  endif;
              endfor;
              upi_is_owner := False;
              for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    upi_is_owner := True;
                  endif;
              endfor;
              if upi_is_owner then
                self.tractor[htid].sf_update_done := True;
              endif;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          elsif (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
            self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
            self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpCur;
            self.tractor[htid].snpneeded := True;
          elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
            self.tractor[htid].sf_update_done := True;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__FTS) then
          if !(tag_match) then
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              upi_is_owner := False;
              for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    upi_is_owner := True;
                  endif;
              endfor;
              if upi_is_owner then
                self.tractor[htid].sf_update_done := True;
              endif;
              if ((self.tractor[htid].protocol = Protocol__IDIC) &  !(self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id]) ) then
                for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                    if self.sf[sf_way].CV_bits_idic[id] then
                      self.tractor[htid].idic_snoop_target[id] := True;
                      self.tractor[htid].snpneeded := True;
                      self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                    endif;
                endfor;
              elsif (((self.tractor[htid].protocol = Protocol__IDIC) &  self.sf[sf_way].CV_bits_idic[self.tractor[htid].agent_id] ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  self.sf[sf_way].CV_bits_upi[self.tractor[htid].agent_id] ) ) then
                if self.tractor[htid].selfsnp then
                  if (self.tractor[htid].protocol = Protocol__IDIC) then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[self.tractor[htid].agent_id] := True;
                    self.tractor[htid].idic_snoop_opcode[self.tractor[htid].agent_id] := IDI_Opcode__SnpCur;
                  else
                    self.tractor[htid].sf_update_done := True;
                  endif;
                else
                  self.tractor[htid].sf_update_done := True;
                endif;
              else
                assert False "case is not covered in sf lookup phase";
              endif;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          elsif (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
            self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
            self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpCur;
            self.tractor[htid].snpneeded := True;
          elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
            self.tractor[htid].sf_update_done := True;
          endif;
        elsif (HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol) = CA_type__EXC) then
          if !(tag_match) then
            if IDIC_SOT_VALID then
              for id: SOTIDICAgents do
                  self.tractor[htid].snpneeded := True;
                  self.tractor[htid].idic_snoop_target[id] := True;
                  self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
              endfor;
            endif;
            self.tractor[htid].sf_update_done := True;
          elsif !(self.sf[sf_way].CV_format) then
            if SFEntry__all_cv_bits_0(self.sf[sf_way]) then
              if IDIC_SOT_VALID then
                for id: SOTIDICAgents do
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                endfor;
              endif;
              self.tractor[htid].sf_update_done := True;
            elsif (SFEntry__count_cv_bits_1(self.sf[sf_way]) = 1) then
              for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                  if self.sf[sf_way].CV_bits_idic[id] then
                    self.tractor[htid].snpneeded := True;
                    self.tractor[htid].idic_snoop_target[id] := True;
                    self.tractor[htid].idic_snoop_opcode[id] := IDI_Opcode__SnpCur;
                  endif;
              endfor;
              upi_is_owner := False;
              for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if self.sf[sf_way].CV_bits_upi[id] then
                    upi_is_owner := True;
                  endif;
              endfor;
              if upi_is_owner then
                self.tractor[htid].sf_update_done := True;
              endif;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          elsif ((self.tractor[htid].agent_id = self.sf[sf_way].owner_id) &  (self.sf[sf_way].owner_protocol = self.tractor[htid].protocol) ) then
            if self.tractor[htid].selfsnp then
              if (self.tractor[htid].protocol = Protocol__IDIC) then
                self.tractor[htid].snpneeded := True;
                self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
                self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpCur;
              else
                self.tractor[htid].sf_update_done := True;
              endif;
            else
              self.tractor[htid].sf_update_done := True;
            endif;
          elsif (self.sf[sf_way].owner_protocol = Protocol__IDIC) then
            self.tractor[htid].idic_snoop_target[self.sf[sf_way].owner_id] := True;
            self.tractor[htid].idic_snoop_opcode[self.sf[sf_way].owner_id] := IDI_Opcode__SnpCur;
            self.tractor[htid].snpneeded := True;
          elsif (self.sf[sf_way].owner_protocol = Protocol__UPI) then
            self.tractor[htid].sf_update_done := True;
          endif;
        else
          assert False " SF lookup is not implemented yet for  HBo__detect_CA_type(self, self.tractor[htid].agent_id, self.tractor[htid].protocol)";
        endif;
      else
        assert False " SF lookup is not implemented yet for  self.tractor[htid].coh_op";
      endif;
      self.tractor[htid].sf_lookup_done := True;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__recv_idi_packet(var self: HBo; var packet: AgentPacket);
var
  pkt: IDIPacket;
begin
  pkt := packet.packet;
  if (pkt.opcode=IDI_Opcode__RdAny | pkt.opcode=IDI_Opcode__RdCurr | pkt.opcode=IDI_Opcode__RdOwn | pkt.opcode=IDI_Opcode__RdShared | pkt.opcode=IDI_Opcode__RdOwnNoData | pkt.opcode=IDI_Opcode__ItoMWr | pkt.opcode=IDI_Opcode__CLFlush | pkt.opcode=IDI_Opcode__CleanEvict | pkt.opcode=IDI_Opcode__CleanEvictNoInvalidate | pkt.opcode=IDI_Opcode__DirtyEvict | pkt.opcode=IDI_Opcode__DirtyEvictNoInv | pkt.opcode=IDI_Opcode__CleanEvictNoData | pkt.opcode=IDI_Opcode__CLFlush_OPT | pkt.opcode=IDI_Opcode__WOWrInv | pkt.opcode=IDI_Opcode__WOWrInvF | pkt.opcode=IDI_Opcode__WrInv | pkt.opcode=IDI_Opcode__CLWB | pkt.opcode=IDI_Opcode__MemWr | pkt.opcode=IDI_Opcode__UcRdF | pkt.opcode=IDI_Opcode__PrefetchtoSysCache | pkt.opcode=IDI_Opcode__SetMonitor | pkt.opcode=IDI_Opcode__ClrMonitor | pkt.opcode=IDI_Opcode__RdCurr_ns ) then
    HBo__recv_A2FReq(self, packet.network_id, pkt);
  elsif (pkt.opcode = IDI_Opcode__GOAck) then
    HBo__recv_ack_response(self, pkt);
  elsif (pkt.opcode=IDI_Opcode__RspIHitI | pkt.opcode=IDI_Opcode__RspSHitSE | pkt.opcode=IDI_Opcode__RspIHitSE | pkt.opcode=IDI_Opcode__RspVHitV | pkt.opcode=IDI_Opcode__RspIFwdM | pkt.opcode=IDI_Opcode__RspSFwdM | pkt.opcode=IDI_Opcode__RspVFwdV | pkt.opcode=IDI_Opcode__GOAck ) then
    HBo__recv_idic_snoop_response(self, pkt);
  elsif (pkt.opcode = IDI_Opcode__Data) then
    HBo__recv_A2FData(self, pkt);
  else
    assert False " opcode  pkt.opcode  is not expected in hbo from idiagent";
  endif;
end;

procedure HBo__recv_upi_packet(var self: HBo; var packet: UPIPacket);
begin
  if (packet.opcode=UPI_Opcode__RspI | packet.opcode=UPI_Opcode__RspIWb | packet.opcode=UPI_Opcode__RspS | packet.opcode=UPI_Opcode__RspSWb | packet.opcode=UPI_Opcode__RspCurData | packet.opcode=UPI_Opcode__RspE | packet.opcode=UPI_Opcode__RspFwdID | packet.opcode=UPI_Opcode__RspFwdIWb | packet.opcode=UPI_Opcode__RspFwdIC | packet.opcode=UPI_Opcode__RspFwdSWb | packet.opcode=UPI_Opcode__RspFwdS ) then
    HBo__recv_CAResp(self, packet);
  elsif ((packet.opcode=UPI_Opcode__RdCode | packet.opcode=UPI_Opcode__RdData | packet.opcode=UPI_Opcode__RdDataMig | packet.opcode=UPI_Opcode__RdInvOwn | packet.opcode=UPI_Opcode__InvXtoI | packet.opcode=UPI_Opcode__InvItoE | packet.opcode=UPI_Opcode__RdInv | packet.opcode=UPI_Opcode__InvItoM | packet.opcode=UPI_Opcode__RdCur ) |  (packet.opcode=UPI_Opcode__ReqFwdCnflt | packet.opcode=UPI_Opcode__WbMtoI | packet.opcode=UPI_Opcode__WbMtoS | packet.opcode=UPI_Opcode__WbMtoE | packet.opcode=UPI_Opcode__WbEtoI | packet.opcode=UPI_Opcode__WbMtoIPtl | packet.opcode=UPI_Opcode__WbMtoEPtl ) ) then
    HBo__recv_CAReq(self, packet);
  elsif (packet.opcode=UPI_Opcode__ReqFwdCnflt ) then
    HBo__recv_CAReq(self, packet);
  else
    assert False " opcode  packet.opcode  is not expected in hbo from upiagent";
  endif;
end;

procedure CA_SnoopEntry__load(var self: CA_SnoopEntry; var packet: UPIPacket);
begin
    self.opcode := packet.opcode;
    self.htid := packet.htid;
    self.state := SRB_STATE__Ready;
    if (packet.opcode=UPI_Opcode__SnpInvOwn | packet.opcode=UPI_Opcode__SnpCode | packet.opcode=UPI_Opcode__SnpDataMig | packet.opcode=UPI_Opcode__SnpData ) then
      self.rtid := packet.rtid;
      self.crnid := packet.crnid;
    endif;
end;

procedure CA__recv_snoop_from_hbo(var self: CA; var packet: UPIPacket);
begin
    assert (self.snoopq[packet.address].state = SRB_STATE__Idle) " Already there is a snoop pending for address  packet.address";
    CA_SnoopEntry__load(self.snoopq[packet.address], packet);
    for id: RTID do
        if (self.tor[id].state != RTID_STATE__Idle) then
          if (self.tor[id].opcode=UPI_Opcode__RdCode | self.tor[id].opcode=UPI_Opcode__RdData | self.tor[id].opcode=UPI_Opcode__RdDataMig | self.tor[id].opcode=UPI_Opcode__RdInvOwn | self.tor[id].opcode=UPI_Opcode__InvXtoI | self.tor[id].opcode=UPI_Opcode__InvItoE | self.tor[id].opcode=UPI_Opcode__RdInv | self.tor[id].opcode=UPI_Opcode__InvItoM ) then
            self.tor[id].conflict := True;
          endif;
        endif;
    endfor;
end;

procedure TOREntry__release(var self: TOREntry);
begin
    undefine self.opcode;
    undefine self.address;
    self.state := RTID_STATE__Idle;
    undefine self.torid;
    self.conflict := False;
    self.stale := False;
end;

procedure CA__recv_response_from_hbo(var self: CA; var packet: UPIPacket);
var
  one_match: boolean;
begin
    if (packet.opcode=UPI_Opcode__SI_CmpO ) then
      if (self.tor[packet.rtid].opcode=UPI_Opcode__RdCode | self.tor[packet.rtid].opcode=UPI_Opcode__RdData | self.tor[packet.rtid].opcode=UPI_Opcode__RdDataMig | self.tor[packet.rtid].opcode=UPI_Opcode__RdCur ) then
        if ((!(self.tor[packet.rtid].opcode=UPI_Opcode__RdCur) ) &  (self.cache[self.tor[packet.rtid].address].state=CacheState__I ) ) then
          self.cache[self.tor[packet.rtid].address].state := CacheState__S;
          if (self.tor[packet.rtid].state != RTID_STATE__RcvdData) then
            for word: Word do
                self.cache[self.tor[packet.rtid].address].be[word] := False;
            endfor;
          endif;
        endif;
        if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
          self.tor[packet.rtid].state := RTID_STATE__RcvdCmp;
        elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdData) then
          self.tor[packet.rtid].state := RTID_STATE__Idle;
          TOREntry__release(self.tor[packet.rtid]);
        else
          assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
        endif;
      elsif (self.tor[packet.rtid].opcode = UPI_Opcode__InvXtoI) then
        assert (self.cache[self.tor[packet.rtid].address].state = CacheState__I) " Support not added for other response  packet.opcode  for  self.tor[packet.rtid].opcode  when cs is  self.cache[self.tor[packet.rtid].address].state";
        if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
          self.tor[packet.rtid].state := RTID_STATE__Idle;
          TOREntry__release(self.tor[packet.rtid]);
        else
          assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
        endif;
      else
        assert False " Support not added for other response  packet.opcode  for  self.tor[packet.rtid].opcode";
      endif;
    elsif (packet.opcode=UPI_Opcode__Data_SI ) then
      if (self.tor[packet.rtid].opcode=UPI_Opcode__RdCode | self.tor[packet.rtid].opcode=UPI_Opcode__RdData | self.tor[packet.rtid].opcode=UPI_Opcode__RdDataMig ) then
        if ((self.cache[self.tor[packet.rtid].address].state=CacheState__M | self.cache[self.tor[packet.rtid].address].state=CacheState__E ) &  !(self.tor[packet.rtid].stale) ) then
          for word: Word do
              if !(self.cache[self.tor[packet.rtid].address].be[word]) then
                self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
                self.cache[self.tor[packet.rtid].address].be[word] := True;
              endif;
          endfor;
        elsif ((self.cache[self.tor[packet.rtid].address].state=CacheState__S ) &  !(self.tor[packet.rtid].stale) ) then
          for word: Word do
              if !(self.cache[self.tor[packet.rtid].address].be[word]) then
                self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
                self.cache[self.tor[packet.rtid].address].be[word] := True;
              endif;
          endfor;
        elsif ((self.cache[self.tor[packet.rtid].address].state=CacheState__I ) &  !(self.tor[packet.rtid].stale) ) then
          for word: Word do
              self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
              self.cache[self.tor[packet.rtid].address].be[word] := True;
          endfor;
          self.cache[self.tor[packet.rtid].address].state := CacheState__S;
        endif;
        if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
          self.tor[packet.rtid].state := RTID_STATE__RcvdData;
        elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdCmp) then
          self.tor[packet.rtid].state := RTID_STATE__Idle;
          TOREntry__release(self.tor[packet.rtid]);
        else
          assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
        endif;
      elsif (self.tor[packet.rtid].opcode=UPI_Opcode__RdCur ) then
        if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
          self.tor[packet.rtid].state := RTID_STATE__RcvdData;
        elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdCmp) then
          self.tor[packet.rtid].state := RTID_STATE__Idle;
          TOREntry__release(self.tor[packet.rtid]);
        else
          assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
        endif;
      else
        assert False " Support not added for other response  packet.opcode  for  self.tor[packet.rtid].opcode";
      endif;
    elsif (packet.opcode=UPI_Opcode__E_CmpO ) then
      if (self.tor[packet.rtid].opcode=UPI_Opcode__RdData | self.tor[packet.rtid].opcode=UPI_Opcode__RdDataMig | self.tor[packet.rtid].opcode=UPI_Opcode__RdInvOwn | self.tor[packet.rtid].opcode=UPI_Opcode__RdInv ) then
        if (self.cache[self.tor[packet.rtid].address].state=CacheState__I | self.cache[self.tor[packet.rtid].address].state=CacheState__S ) then
          if ((self.tor[packet.rtid].state != RTID_STATE__RcvdData) &  (self.cache[self.tor[packet.rtid].address].state=CacheState__I ) ) then
            for word: Word do
                self.cache[self.tor[packet.rtid].address].be[word] := False;
            endfor;
          endif;
          self.cache[self.tor[packet.rtid].address].state := CacheState__E;
        endif;
        if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
          self.tor[packet.rtid].state := RTID_STATE__RcvdCmp;
        elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdData) then
          self.tor[packet.rtid].state := RTID_STATE__Idle;
          TOREntry__release(self.tor[packet.rtid]);
        else
          assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
        endif;
      elsif (self.tor[packet.rtid].opcode=UPI_Opcode__InvItoE | self.tor[packet.rtid].opcode=UPI_Opcode__InvItoM ) then
        if (self.cache[self.tor[packet.rtid].address].state=CacheState__S ) then
          self.cache[self.tor[packet.rtid].address].state := CacheState__E;
        elsif (self.cache[self.tor[packet.rtid].address].state=CacheState__I ) then
          self.cache[self.tor[packet.rtid].address].state := CacheState__E;
          for word: Word do
              self.cache[self.tor[packet.rtid].address].be[word] := False;
          endfor;
        endif;
        if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
          self.tor[packet.rtid].state := RTID_STATE__Idle;
          TOREntry__release(self.tor[packet.rtid]);
        else
          assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
        endif;
      else
        assert False " Support not added for other response  packet.opcode  for  self.tor[packet.rtid].opcode";
      endif;
    elsif (packet.opcode=UPI_Opcode__Data_E ) then
      if (self.tor[packet.rtid].opcode=UPI_Opcode__RdData | self.tor[packet.rtid].opcode=UPI_Opcode__RdDataMig | self.tor[packet.rtid].opcode=UPI_Opcode__RdInvOwn | self.tor[packet.rtid].opcode=UPI_Opcode__RdInv ) then
        if ((self.cache[self.tor[packet.rtid].address].state=CacheState__M | self.cache[self.tor[packet.rtid].address].state=CacheState__E ) &  !(self.tor[packet.rtid].stale) ) then
          for word: Word do
              if !(self.cache[self.tor[packet.rtid].address].be[word]) then
                self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
                self.cache[self.tor[packet.rtid].address].be[word] := True;
              endif;
          endfor;
        elsif ((self.cache[self.tor[packet.rtid].address].state=CacheState__S | self.cache[self.tor[packet.rtid].address].state=CacheState__I ) &  !(self.tor[packet.rtid].stale) ) then
          for word: Word do
              self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
              self.cache[self.tor[packet.rtid].address].be[word] := True;
          endfor;
          self.cache[self.tor[packet.rtid].address].state := CacheState__E;
        endif;
        if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
          self.tor[packet.rtid].state := RTID_STATE__RcvdData;
        elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdCmp) then
          self.tor[packet.rtid].state := RTID_STATE__Idle;
          TOREntry__release(self.tor[packet.rtid]);
        else
          assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
        endif;
      else
        assert False " Support not added for other response  packet.opcode  for  self.tor[packet.rtid].opcode";
      endif;
    elsif (packet.opcode=UPI_Opcode__FwdCnfltO ) then
      one_match := False;
      for address: Address do
          if ((self.snoopq[address].state = SRB_STATE__ReqSent) &  (self.snoopq[address].fwdtid = packet.rtid) ) then
            self.snoopq[address].state := SRB_STATE__Resolved;
            self.rtid_usedby_snp[packet.rtid] := False;
            undefine self.snoopq[address].fwdtid;
            one_match := True;
          endif;
      endfor;
      assert one_match " unrecognized resp recvd  packet.rtid";
    elsif (packet.opcode=UPI_Opcode__M_CmpO ) then
      if (self.tor[packet.rtid].opcode=UPI_Opcode__RdDataMig | self.tor[packet.rtid].opcode=UPI_Opcode__RdInvOwn ) then
        if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
          self.tor[packet.rtid].state := RTID_STATE__RcvdCmp;
        elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdData) then
          self.tor[packet.rtid].state := RTID_STATE__Idle;
          TOREntry__release(self.tor[packet.rtid]);
        else
          assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
        endif;
      else
        assert False " Support not added for other response  packet.opcode  for  self.tor[packet.rtid].opcode";
      endif;
    elsif (packet.opcode=UPI_Opcode__Data_M ) then
      if (self.tor[packet.rtid].opcode=UPI_Opcode__RdDataMig | self.tor[packet.rtid].opcode=UPI_Opcode__RdInvOwn ) then
        if ((self.cache[self.tor[packet.rtid].address].state=CacheState__I ) &  !(self.tor[packet.rtid].stale) ) then
          for word: Word do
              self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
              self.cache[self.tor[packet.rtid].address].be[word] := True;
          endfor;
          self.cache[self.tor[packet.rtid].address].state := CacheState__M;
        endif;
        if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
          self.tor[packet.rtid].state := RTID_STATE__RcvdData;
        elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdCmp) then
          self.tor[packet.rtid].state := RTID_STATE__Idle;
          TOREntry__release(self.tor[packet.rtid]);
        else
          assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
        endif;
      else
        assert False " Support not added for other response  packet.opcode  for  self.tor[packet.rtid].opcode";
      endif;
    elsif (packet.opcode=UPI_Opcode__CmpU ) then
      if (self.tor[packet.rtid].opcode=UPI_Opcode__WbMtoI | self.tor[packet.rtid].opcode=UPI_Opcode__WbMtoS | self.tor[packet.rtid].opcode=UPI_Opcode__WbMtoE | self.tor[packet.rtid].opcode=UPI_Opcode__WbEtoI | self.tor[packet.rtid].opcode=UPI_Opcode__WbMtoIPtl | self.tor[packet.rtid].opcode=UPI_Opcode__WbMtoEPtl ) then
        if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
          self.tor[packet.rtid].state := RTID_STATE__Idle;
          TOREntry__release(self.tor[packet.rtid]);
        else
          assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
        endif;
      else
        assert False " Support not added for other response  packet.opcode  for  self.tor[packet.rtid].opcode";
      endif;
    else
      assert False " Unexpected response  packet.opode  recvd";
    endif;
end;

procedure CA__recv_packet_from_hbo(var self: CA; var packet: UPIPacket);
begin
  if (packet.opcode=UPI_Opcode__SnpLCode | packet.opcode=UPI_Opcode__SnpLData | packet.opcode=UPI_Opcode__SnpLInv | packet.opcode=UPI_Opcode__SnpLCurr | packet.opcode=UPI_Opcode__SnpInvOwn | packet.opcode=UPI_Opcode__SnpCode | packet.opcode=UPI_Opcode__SnpDataMig | packet.opcode=UPI_Opcode__SnpData ) then
    CA__recv_snoop_from_hbo(self, packet);
  elsif (packet.opcode=UPI_Opcode__SI_CmpO | packet.opcode=UPI_Opcode__Data_SI | packet.opcode=UPI_Opcode__E_CmpO | packet.opcode=UPI_Opcode__Data_E | packet.opcode=UPI_Opcode__FwdCnfltO | packet.opcode=UPI_Opcode__Data_M | packet.opcode=UPI_Opcode__M_CmpO | packet.opcode=UPI_Opcode__CmpU ) then
    CA__recv_response_from_hbo(self, packet);
  else
    assert False " Don't know what to do with the packet  packet.opcode";
  endif;
end;

procedure CA__recv_data_from_santa(var self: CA; var packet: IDIPacket);
begin
    if (self.tor[packet.rtid].opcode=UPI_Opcode__RdCode | self.tor[packet.rtid].opcode=UPI_Opcode__RdData | self.tor[packet.rtid].opcode=UPI_Opcode__RdDataMig ) then
      if ((self.cache[self.tor[packet.rtid].address].state=CacheState__M | self.cache[self.tor[packet.rtid].address].state=CacheState__E ) &  !(self.tor[packet.rtid].stale) ) then
        for word: Word do
            if !(self.cache[self.tor[packet.rtid].address].be[word]) then
              self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
              self.cache[self.tor[packet.rtid].address].be[word] := True;
            endif;
        endfor;
      elsif ((self.cache[self.tor[packet.rtid].address].state=CacheState__I ) &  !(self.tor[packet.rtid].stale) ) then
        for word: Word do
            self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
            self.cache[self.tor[packet.rtid].address].be[word] := True;
        endfor;
        self.cache[self.tor[packet.rtid].address].state := CacheState__S;
      elsif ((self.cache[self.tor[packet.rtid].address].state=CacheState__S ) &  !(self.tor[packet.rtid].stale) ) then
        for word: Word do
            self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
            self.cache[self.tor[packet.rtid].address].be[word] := True;
        endfor;
      endif;
      if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
        self.tor[packet.rtid].state := RTID_STATE__RcvdData;
      elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdCmp) then
        self.tor[packet.rtid].state := RTID_STATE__Idle;
        TOREntry__release(self.tor[packet.rtid]);
      else
        assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
      endif;
    elsif (self.tor[packet.rtid].opcode=UPI_Opcode__RdCur ) then
      if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
        self.tor[packet.rtid].state := RTID_STATE__RcvdData;
      elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdCmp) then
        self.tor[packet.rtid].state := RTID_STATE__Idle;
        TOREntry__release(self.tor[packet.rtid]);
      else
        assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
      endif;
    elsif (self.tor[packet.rtid].opcode=UPI_Opcode__RdInvOwn | self.tor[packet.rtid].opcode=UPI_Opcode__RdInv ) then
      if ((self.cache[self.tor[packet.rtid].address].state=CacheState__M | self.cache[self.tor[packet.rtid].address].state=CacheState__E ) &  !(self.tor[packet.rtid].stale) ) then
        for word: Word do
            if !(self.cache[self.tor[packet.rtid].address].be[word]) then
              self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
              self.cache[self.tor[packet.rtid].address].be[word] := True;
            endif;
        endfor;
      elsif ((self.cache[self.tor[packet.rtid].address].state=CacheState__S | self.cache[self.tor[packet.rtid].address].state=CacheState__I ) &  !(self.tor[packet.rtid].stale) ) then
        for word: Word do
            self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
            self.cache[self.tor[packet.rtid].address].be[word] := True;
        endfor;
        self.cache[self.tor[packet.rtid].address].state := CacheState__E;
      endif;
      if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
        self.tor[packet.rtid].state := RTID_STATE__RcvdData;
      elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdCmp) then
        self.tor[packet.rtid].state := RTID_STATE__Idle;
        TOREntry__release(self.tor[packet.rtid]);
      else
        assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
      endif;
    else
      assert False " Unexpected response  packet.opode  recvd";
    endif;
end;

procedure CA__recv_packet_from_santa(var self: CA; var packet: IDIPacket);
begin
  if (packet.opcode=IDI_Opcode__Data ) then
    CA__recv_data_from_santa(self, packet);
  else
    assert False " Don't know what to do with the packet  packet.opcode";
  endif;
end;

procedure CA__recv_packet_from_peer_ca(var self: CA; var packet: UPIPacket);
begin
  if (packet.opcode=UPI_Opcode__Data_E ) then
    if (self.tor[packet.rtid].opcode=UPI_Opcode__RdData | self.tor[packet.rtid].opcode=UPI_Opcode__RdDataMig | self.tor[packet.rtid].opcode=UPI_Opcode__RdInvOwn | self.tor[packet.rtid].opcode=UPI_Opcode__RdInv ) then
      if ((self.cache[self.tor[packet.rtid].address].state=CacheState__M | self.cache[self.tor[packet.rtid].address].state=CacheState__E ) &  !(self.tor[packet.rtid].stale) ) then
        for word: Word do
            if !(self.cache[self.tor[packet.rtid].address].be[word]) then
              self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
              self.cache[self.tor[packet.rtid].address].be[word] := True;
            endif;
        endfor;
      elsif ((self.cache[self.tor[packet.rtid].address].state=CacheState__S | self.cache[self.tor[packet.rtid].address].state=CacheState__I ) &  !(self.tor[packet.rtid].stale) ) then
        for word: Word do
            self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
            self.cache[self.tor[packet.rtid].address].be[word] := True;
        endfor;
        self.cache[self.tor[packet.rtid].address].state := CacheState__E;
      endif;
      if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
        self.tor[packet.rtid].state := RTID_STATE__RcvdData;
      elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdCmp) then
        self.tor[packet.rtid].state := RTID_STATE__Idle;
        TOREntry__release(self.tor[packet.rtid]);
      else
        assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
      endif;
    else
      assert False " Support not added for other response  packet.opcode  for  self.tor[packet.rtid].opcode";
    endif;
  elsif (packet.opcode=UPI_Opcode__Data_M ) then
    if (self.tor[packet.rtid].opcode=UPI_Opcode__RdDataMig | self.tor[packet.rtid].opcode=UPI_Opcode__RdInvOwn ) then
      if ((self.cache[self.tor[packet.rtid].address].state=CacheState__I ) &  !(self.tor[packet.rtid].stale) ) then
        for word: Word do
            self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
            self.cache[self.tor[packet.rtid].address].be[word] := True;
        endfor;
        self.cache[self.tor[packet.rtid].address].state := CacheState__M;
      endif;
      if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
        self.tor[packet.rtid].state := RTID_STATE__RcvdData;
      elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdCmp) then
        self.tor[packet.rtid].state := RTID_STATE__Idle;
        TOREntry__release(self.tor[packet.rtid]);
      else
        assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
      endif;
    else
      assert False " Support not added for other response  packet.opcode  for  self.tor[packet.rtid].opcode";
    endif;
  elsif (packet.opcode=UPI_Opcode__Data_SI ) then
    if (self.tor[packet.rtid].opcode=UPI_Opcode__RdCode | self.tor[packet.rtid].opcode=UPI_Opcode__RdData | self.tor[packet.rtid].opcode=UPI_Opcode__RdDataMig ) then
      if ((self.cache[self.tor[packet.rtid].address].state=CacheState__M | self.cache[self.tor[packet.rtid].address].state=CacheState__E ) &  !(self.tor[packet.rtid].stale) ) then
        for word: Word do
            if !(self.cache[self.tor[packet.rtid].address].be[word]) then
              self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
              self.cache[self.tor[packet.rtid].address].be[word] := True;
            endif;
        endfor;
      elsif ((self.cache[self.tor[packet.rtid].address].state=CacheState__I ) &  !(self.tor[packet.rtid].stale) ) then
        for word: Word do
            self.cache[self.tor[packet.rtid].address].data[word] := packet.data[word];
            self.cache[self.tor[packet.rtid].address].be[word] := True;
        endfor;
        self.cache[self.tor[packet.rtid].address].state := CacheState__S;
      endif;
      if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
        self.tor[packet.rtid].state := RTID_STATE__RcvdData;
      elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdCmp) then
        self.tor[packet.rtid].state := RTID_STATE__Idle;
        TOREntry__release(self.tor[packet.rtid]);
      else
        assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
      endif;
    elsif (self.tor[packet.rtid].opcode=UPI_Opcode__RdCur ) then
      if (self.tor[packet.rtid].state = RTID_STATE__SentReq) then
        self.tor[packet.rtid].state := RTID_STATE__RcvdData;
      elsif (self.tor[packet.rtid].state = RTID_STATE__RcvdCmp) then
        self.tor[packet.rtid].state := RTID_STATE__Idle;
        TOREntry__release(self.tor[packet.rtid]);
      else
        assert False " unrecognized resp recvd in state  self.tor[packet.rtid].state";
      endif;
    else
      assert False " Support not added for other response  packet.opcode  for  self.tor[packet.rtid].opcode";
    endif;
  else
    assert False " Unexpected response  packet.opcode  recvd";
  endif;
end;

procedure UChannel__1__push(var self: UChannel__1; var pkt: UPIPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure UChannel__2__push(var self: UChannel__2; var pkt: UPIPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure UChannel__4__push(var self: UChannel__4; var pkt: UPIPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure ULink__recv_ca_packet(var self: ULink; var packet: UPIPacket);
begin
  if (packet.opcode=UPI_Opcode__RdCode | packet.opcode=UPI_Opcode__RdData | packet.opcode=UPI_Opcode__RdDataMig | packet.opcode=UPI_Opcode__RdInvOwn | packet.opcode=UPI_Opcode__InvXtoI | packet.opcode=UPI_Opcode__InvItoE | packet.opcode=UPI_Opcode__RdInv | packet.opcode=UPI_Opcode__InvItoM | packet.opcode=UPI_Opcode__RdCur ) then
    UChannel__1__push(self.CAReq, packet);
  elsif (packet.opcode=UPI_Opcode__ReqFwdCnflt | packet.opcode=UPI_Opcode__WbMtoI | packet.opcode=UPI_Opcode__WbMtoS | packet.opcode=UPI_Opcode__WbMtoE | packet.opcode=UPI_Opcode__WbEtoI | packet.opcode=UPI_Opcode__WbMtoIPtl | packet.opcode=UPI_Opcode__WbMtoEPtl ) then
    UChannel__2__push(self.CAWb, packet);
  elsif (packet.opcode=UPI_Opcode__RspI | packet.opcode=UPI_Opcode__RspIWb | packet.opcode=UPI_Opcode__RspS | packet.opcode=UPI_Opcode__RspSWb | packet.opcode=UPI_Opcode__RspCurData | packet.opcode=UPI_Opcode__RspE | packet.opcode=UPI_Opcode__RspFwdID | packet.opcode=UPI_Opcode__RspFwdIWb | packet.opcode=UPI_Opcode__RspFwdIC | packet.opcode=UPI_Opcode__RspFwdSWb | packet.opcode=UPI_Opcode__RspFwdS ) then
    UChannel__4__push(self.CAResp, packet);
  else
    assert False " Did not handle  packet.opcode  packet. In recv_ca_packet in link";
  endif;
end;

procedure UChannel__3__push(var self: UChannel__3; var pkt: UPIPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure UChannel__5__push(var self: UChannel__5; var pkt: UPIPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure ULink__recv_ha_packet(var self: ULink; var packet: UPIPacket);
begin
  if (packet.opcode=UPI_Opcode__SnpLCode | packet.opcode=UPI_Opcode__SnpLData | packet.opcode=UPI_Opcode__SnpLInv | packet.opcode=UPI_Opcode__SnpLCurr | packet.opcode=UPI_Opcode__SnpInvOwn | packet.opcode=UPI_Opcode__SnpCode | packet.opcode=UPI_Opcode__SnpDataMig | packet.opcode=UPI_Opcode__SnpData ) then
    UChannel__3__push(self.HASnp, packet);
  elsif (packet.opcode=UPI_Opcode__SI_CmpO | packet.opcode=UPI_Opcode__Data_SI | packet.opcode=UPI_Opcode__E_CmpO | packet.opcode=UPI_Opcode__Data_E | packet.opcode=UPI_Opcode__FwdCnfltO | packet.opcode=UPI_Opcode__Data_M | packet.opcode=UPI_Opcode__M_CmpO | packet.opcode=UPI_Opcode__CmpU ) then
    UChannel__5__push(self.HAResp, packet);
  else
    assert False " Did not handle  packet.opcode  packet. in recv_ha_packet in link";
  endif;
end;

procedure CChannel__5__push(var self: CChannel__5; var pkt: CXMPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure ULink__recv_mc_packet(var self: ULink; var packet: CXMPacket);
begin
  if (packet.opcode=CXM_Opcode__MemData ) then
    CChannel__5__push(self.MCResp, packet);
  else
    assert False " Did not handle  packet.opcode  packet. in recv_ha_packet in link";
  endif;
end;

procedure CacheEntry__release(var self: CacheEntry);
begin
    self.state := CacheState__I;
    for word: Word do
        undefine self.data[word];
        self.be[word] := False;
    endfor;
end;

procedure IDIAgent__recv_F2AResp_packet(var self: IDIAgent; var packet: IDIPacket);
begin
    assert self.cq[packet.rtid].valid " rtid  packet.rtid  is no longer valid in Agent";
    if (self.cq[packet.rtid].opcode=IDI_Opcode__RdOwn ) then
      assert ((packet.opcode = IDI_Opcode__GO) &  (packet.cachestate=CacheState__E | packet.cachestate=CacheState__M ) ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      if (self.cq[packet.rtid].data_recvd &  !(self.cq[packet.rtid].stale) ) then
        for word: Word do
            if !(self.cache[self.cq[packet.rtid].address].be[word]) then
              self.cache[self.cq[packet.rtid].address].be[word] := True;
              self.cache[self.cq[packet.rtid].address].data[word] := self.cq[packet.rtid].data[word];
            endif;
        endfor;
      endif;
      if (self.cache[self.cq[packet.rtid].address].state=CacheState__S | self.cache[self.cq[packet.rtid].address].state=CacheState__I ) then
        self.cache[self.cq[packet.rtid].address].state := packet.cachestate;
      endif;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__RdOwnNoData ) then
      assert ((packet.opcode = IDI_Opcode__GO) &  (packet.cachestate=CacheState__E ) ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      if (self.cache[self.cq[packet.rtid].address].state=CacheState__S | self.cache[self.cq[packet.rtid].address].state=CacheState__I ) then
        self.cache[self.cq[packet.rtid].address].state := packet.cachestate;
      endif;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__RdShared ) then
      assert ((packet.opcode = IDI_Opcode__GO) &  (packet.cachestate=CacheState__S ) ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      if (self.cq[packet.rtid].data_recvd &  !(self.cq[packet.rtid].stale) ) then
        for word: Word do
            if !(self.cache[self.cq[packet.rtid].address].be[word]) then
              self.cache[self.cq[packet.rtid].address].be[word] := True;
              self.cache[self.cq[packet.rtid].address].data[word] := self.cq[packet.rtid].data[word];
            endif;
        endfor;
      endif;
      if (self.cache[self.cq[packet.rtid].address].state=CacheState__I ) then
        self.cq[packet.rtid].respstate := packet.cachestate;
        self.cache[self.cq[packet.rtid].address].state := packet.cachestate;
      endif;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__RdAny ) then
      assert ((packet.opcode = IDI_Opcode__GO) &  (packet.cachestate=CacheState__S | packet.cachestate=CacheState__E | packet.cachestate=CacheState__M ) ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      if (self.cq[packet.rtid].data_recvd &  !(self.cq[packet.rtid].stale) ) then
        for word: Word do
            if !(self.cache[self.cq[packet.rtid].address].be[word]) then
              self.cache[self.cq[packet.rtid].address].be[word] := True;
              self.cache[self.cq[packet.rtid].address].data[word] := self.cq[packet.rtid].data[word];
            endif;
        endfor;
      endif;
      if (self.cache[self.cq[packet.rtid].address].state=CacheState__I | self.cache[self.cq[packet.rtid].address].state=CacheState__S ) then
        self.cq[packet.rtid].respstate := packet.cachestate;
        self.cache[self.cq[packet.rtid].address].state := packet.cachestate;
      endif;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__ItoMWr | self.cq[packet.rtid].opcode=IDI_Opcode__MemWr ) then
      assert (packet.opcode = IDI_Opcode__GoWritePull) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      self.cq[packet.rtid].respstate := CacheState__I;
      self.cache[self.cq[packet.rtid].address].state := CacheState__I;
      CacheEntry__release(self.cache[self.cq[packet.rtid].address]);
      self.cq[packet.rtid].htid := packet.htid;
      for id: RTID do
          if (self.cq[id].valid &  (self.cq[id].opcode=IDI_Opcode__RdAny | self.cq[id].opcode=IDI_Opcode__RdOwn | self.cq[id].opcode=IDI_Opcode__RdShared ) &  ((self.cq[id].resp_recvd &  !(self.cq[id].data_recvd) ) |  (!(self.cq[id].resp_recvd) &  self.cq[id].data_recvd ) ) ) then
            self.cq[id].stale := True;
          endif;
      endfor;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__CLFlush | self.cq[packet.rtid].opcode=IDI_Opcode__UcRdF ) then
      assert ((packet.opcode = IDI_Opcode__GO) &  (packet.cachestate=CacheState__I ) ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      self.cq[packet.rtid].respstate := CacheState__I;
      self.cache[self.cq[packet.rtid].address].state := CacheState__I;
      CacheEntry__release(self.cache[self.cq[packet.rtid].address]);
      for id: RTID do
          if (self.cq[id].valid &  (self.cq[id].opcode=IDI_Opcode__RdAny | self.cq[id].opcode=IDI_Opcode__RdOwn | self.cq[id].opcode=IDI_Opcode__RdShared ) &  ((self.cq[id].resp_recvd &  !(self.cq[id].data_recvd) ) |  (!(self.cq[id].resp_recvd) &  self.cq[id].data_recvd ) ) ) then
            self.cq[id].stale := True;
          endif;
      endfor;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__PrefetchtoSysCache ) then
      assert ((packet.opcode = IDI_Opcode__GO) &  (packet.cachestate=CacheState__I ) ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      self.cq[packet.rtid].respstate := CacheState__I;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__CLFlush_OPT | self.cq[packet.rtid].opcode=IDI_Opcode__CLWB ) then
      assert (packet.opcode=IDI_Opcode__FastGO | packet.opcode=IDI_Opcode__ExtCmp ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      if (packet.opcode = IDI_Opcode__FastGO) then
        assert !(self.cq[packet.rtid].resp_recvd) " incorrect response recvd for  self.cq[packet.rtid].opcode";
        self.cq[packet.rtid].resp_recvd := True;
        self.cq[packet.rtid].respstate := CacheState__I;
        self.cache[self.cq[packet.rtid].address].state := CacheState__I;
        CacheEntry__release(self.cache[self.cq[packet.rtid].address]);
        self.cq[packet.rtid].resp_opcode := packet.opcode;
      else
        assert !(self.cq[packet.rtid].extcmp_recvd) " incorrect response recvd for  self.cq[packet.rtid].opcode";
        self.cq[packet.rtid].extcmp_recvd := True;
      endif;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__CleanEvict ) then
      assert (packet.opcode=IDI_Opcode__GoWritePull | packet.opcode=IDI_Opcode__GoWritePullDrop ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      self.cq[packet.rtid].resp_opcode := packet.opcode;
      self.cq[packet.rtid].respstate := CacheState__I;
      self.cache[self.cq[packet.rtid].address].state := CacheState__I;
      if (packet.opcode = IDI_Opcode__GoWritePull) then
        self.cq[packet.rtid].htid := packet.htid;
      elsif (packet.opcode = IDI_Opcode__GoWritePullDrop) then
        self.cq[packet.rtid].htid := packet.htid;
        CacheEntry__release(self.cache[self.cq[packet.rtid].address]);
      endif;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__CleanEvictNoInvalidate ) then
      assert (packet.opcode=IDI_Opcode__GoWritePull | packet.opcode=IDI_Opcode__GoWritePullDrop ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      self.cq[packet.rtid].resp_opcode := packet.opcode;
      self.cq[packet.rtid].htid := packet.htid;
      if (packet.opcode = IDI_Opcode__GoWritePullDrop) then
        CacheEntry__release(self.cache[self.cq[packet.rtid].address]);
      endif;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__DirtyEvict ) then
      assert (packet.opcode=IDI_Opcode__GoWritePull ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      self.cq[packet.rtid].resp_opcode := packet.opcode;
      self.cq[packet.rtid].respstate := CacheState__I;
      self.cache[self.cq[packet.rtid].address].state := CacheState__I;
      self.cq[packet.rtid].htid := packet.htid;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__DirtyEvictNoInv ) then
      assert (packet.opcode=IDI_Opcode__GoWritePull ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      self.cq[packet.rtid].resp_opcode := packet.opcode;
      self.cq[packet.rtid].htid := packet.htid;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__CleanEvictNoData ) then
      assert ((packet.opcode=IDI_Opcode__GO ) &  (packet.cachestate = CacheState__I) ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      self.cq[packet.rtid].respstate := CacheState__I;
      self.cache[self.cq[packet.rtid].address].state := CacheState__I;
      CacheEntry__release(self.cache[self.cq[packet.rtid].address]);
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__WOWrInv | self.cq[packet.rtid].opcode=IDI_Opcode__WOWrInvF ) then
      assert (packet.opcode=IDI_Opcode__FastGOWritePull | packet.opcode=IDI_Opcode__ExtCmp ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      if (packet.opcode = IDI_Opcode__FastGOWritePull) then
        assert !(self.cq[packet.rtid].resp_recvd) " incorrect response recvd for  self.cq[packet.rtid].opcode";
        self.cq[packet.rtid].resp_recvd := True;
        self.cq[packet.rtid].respstate := CacheState__I;
        self.cache[self.cq[packet.rtid].address].state := CacheState__I;
        CacheEntry__release(self.cache[self.cq[packet.rtid].address]);
        self.cq[packet.rtid].htid := packet.htid;
      else
        assert !(self.cq[packet.rtid].extcmp_recvd) " incorrect response recvd for  self.cq[packet.rtid].opcode";
        self.cq[packet.rtid].extcmp_recvd := True;
      endif;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__WrInv ) then
      if (packet.opcode = IDI_Opcode__WritePull) then
        assert ((packet.opcode = IDI_Opcode__WritePull) |  ((packet.opcode = IDI_Opcode__GO) &  (packet.cachestate = CacheState__I) ) ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
        self.cq[packet.rtid].resp_recvd := True;
        self.cq[packet.rtid].htid := packet.htid;
        self.cq[packet.rtid].respstate := CacheState__I;
        self.cache[self.cq[packet.rtid].address].state := CacheState__I;
        CacheEntry__release(self.cache[self.cq[packet.rtid].address]);
        for id: RTID do
            if (self.cq[id].valid &  (self.cq[id].opcode=IDI_Opcode__RdAny | self.cq[id].opcode=IDI_Opcode__RdCurr | self.cq[id].opcode=IDI_Opcode__RdOwn | self.cq[id].opcode=IDI_Opcode__RdShared | self.cq[id].opcode=IDI_Opcode__RdCurr_ns ) &  ((self.cq[id].resp_recvd &  !(self.cq[id].data_recvd) ) |  (!(self.cq[id].resp_recvd) &  self.cq[id].data_recvd ) ) ) then
              self.cq[id].stale := True;
            endif;
        endfor;
      else
        assert !(self.cq[packet.rtid].extcmp_recvd) " incorrect response recvd for  self.cq[packet.rtid].opcode";
        self.cq[packet.rtid].extcmp_recvd := True;
      endif;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__SetMonitor ) then
      assert ((packet.opcode = IDI_Opcode__GO) &  (packet.cachestate=CacheState__S ) ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      if (self.cq[packet.rtid].data_recvd &  !(self.cq[packet.rtid].stale) ) then
        for word: Word do
            if !(self.cache[self.cq[packet.rtid].address].be[word]) then
              self.cache[self.cq[packet.rtid].address].be[word] := True;
              self.cache[self.cq[packet.rtid].address].data[word] := self.cq[packet.rtid].data[word];
            endif;
        endfor;
      endif;
      if (self.cache[self.cq[packet.rtid].address].state=CacheState__I ) then
        self.cq[packet.rtid].respstate := packet.cachestate;
      endif;
    elsif (self.cq[packet.rtid].opcode=IDI_Opcode__ClrMonitor ) then
      assert ((packet.opcode = IDI_Opcode__GO) &  (packet.cachestate=CacheState__I ) ) " incorrect response recvd for  self.cq[packet.rtid].opcode";
      self.cq[packet.rtid].resp_recvd := True;
      self.cq[packet.rtid].respstate := CacheState__I;
      self.address_monitored[self.cq[packet.rtid].address] := False;
    else
      assert False " receiving response support is not added for  self.cq[packet.rtid].opcode";
    endif;
end;

function IDIAgent__pending_snoop(var self: IDIAgent; addr: Address):boolean;
begin
    for id: Snoopq_sz do
        if (self.snoopq[id].valid &  (self.snoopq[id].address = addr) &  self.snoopq[id].resp_sent &  (self.snoopq[id].resp_opcode=IDI_Opcode__RspIFwdM | self.snoopq[id].resp_opcode=IDI_Opcode__RspSFwdM | self.snoopq[id].resp_opcode=IDI_Opcode__RspVFwdV ) &  !(self.snoopq[id].data_sent) ) then
          return True;
        endif;
    endfor;
    return False;
end;

procedure IDIAgent__recv_F2AData_packet(var self: IDIAgent; var packet: IDIPacket);
begin
    Guard(self.cq[packet.rtid].valid);
    if isundefined(guard_failed) then
    Guard((self.cq[packet.rtid].opcode=IDI_Opcode__RdAny | self.cq[packet.rtid].opcode=IDI_Opcode__RdCurr | self.cq[packet.rtid].opcode=IDI_Opcode__RdOwn | self.cq[packet.rtid].opcode=IDI_Opcode__RdShared | self.cq[packet.rtid].opcode=IDI_Opcode__UcRdF | self.cq[packet.rtid].opcode=IDI_Opcode__SetMonitor | self.cq[packet.rtid].opcode=IDI_Opcode__RdCurr_ns ));
    if isundefined(guard_failed) then
      self.cq[packet.rtid].data_recvd := True;
      self.cq[packet.rtid].data := packet.data;
      if (!(self.cq[packet.rtid].opcode=IDI_Opcode__RdCurr) & !(self.cq[packet.rtid].opcode=IDI_Opcode__UcRdF) & !(self.cq[packet.rtid].opcode=IDI_Opcode__RdCurr_ns) ) then
        if (self.cq[packet.rtid].resp_recvd &  !(self.cq[packet.rtid].stale) ) then
          if (self.cq[packet.rtid].opcode=IDI_Opcode__RdAny | self.cq[packet.rtid].opcode=IDI_Opcode__RdOwn | self.cq[packet.rtid].opcode=IDI_Opcode__RdShared ) then
            if ((!(self.cache[self.cq[packet.rtid].address].state=CacheState__I) ) |  IDIAgent__pending_snoop(self, self.cq[packet.rtid].address) ) then
              for word: Word do
                  if !(self.cache[self.cq[packet.rtid].address].be[word]) then
                    self.cache[self.cq[packet.rtid].address].data[word] := packet.data[word];
                    self.cache[self.cq[packet.rtid].address].be[word] := True;
                  endif;
              endfor;
            endif;
          endif;
        endif;
      endif;
    endif;
    endif;
end;

procedure SnoopEntry__load(var self: SnoopEntry; var packet: IDIPacket);
begin
    self.valid := True;
    self.opcode := packet.opcode;
    self.htid := packet.htid;
    self.address := packet.address;
end;

function IDIAgent__is_available_snoopentry(var self: IDIAgent):boolean;
begin
    for id: Snoopq_sz do
        if !(self.snoopq[id].valid) then
          return True;
        endif;
    endfor;
    return False;
end;

function IDIAgent__available_snoopentry_index(var self: IDIAgent):Snoopq_sz;
var
  ret_id: Snoopq_sz;
begin
    for id: Snoopq_sz do
        if !(self.snoopq[id].valid) then
          ret_id := id;
        endif;
    endfor;
    return ret_id;
end;

procedure IDIAgent__recv_snoop_request(var self: IDIAgent; var packet: IDIPacket);
var
  snoop_idx: Snoopq_sz;
begin
    Guard(IDIAgent__is_available_snoopentry(self));
    if isundefined(guard_failed) then
      snoop_idx := IDIAgent__available_snoopentry_index(self);
    SnoopEntry__load(self.snoopq[snoop_idx], packet);
    endif;
end;

procedure IDIAgent__recv_packet_from_hbo(var self: IDIAgent; var packet: IDIPacket);
begin
  if (packet.opcode=IDI_Opcode__GO | packet.opcode=IDI_Opcode__GoWritePull | packet.opcode=IDI_Opcode__FastGO | packet.opcode=IDI_Opcode__ExtCmp | packet.opcode=IDI_Opcode__GoWritePullDrop | packet.opcode=IDI_Opcode__FastGOWritePull | packet.opcode=IDI_Opcode__WritePull ) then
    IDIAgent__recv_F2AResp_packet(self, packet);
  elsif (packet.opcode = IDI_Opcode__Data) then
    IDIAgent__recv_F2AData_packet(self, packet);
  elsif (packet.opcode=IDI_Opcode__SnpData | packet.opcode=IDI_Opcode__SnpCode | packet.opcode=IDI_Opcode__SnpInv | packet.opcode=IDI_Opcode__SnpCur | packet.opcode=IDI_Opcode__BackInv ) then
    IDIAgent__recv_snoop_request(self, packet);
  else
    assert False " IDI agent does not know what to do with packet opcode  packet.opcode";
  endif;
end;

procedure Channel__5__push(var self: Channel__5; var pkt: AgentPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure Channel__8__push(var self: Channel__8; var pkt: AgentPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure Channel__9__push(var self: Channel__9; var pkt: AgentPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure Link__recv_agent_packet(var self: Link; var packet: IDIPacket);
var
  ipkt: IDIPacket;
  pkt: AgentPacket;
begin
  ipkt := packet;
  ipkt.responder_id := self.network_id;
  pkt.network_id:=self.network_id;
  pkt.packet:=packet;
  if (packet.opcode=IDI_Opcode__RdAny | packet.opcode=IDI_Opcode__RdCurr | packet.opcode=IDI_Opcode__RdOwn | packet.opcode=IDI_Opcode__RdShared | packet.opcode=IDI_Opcode__RdOwnNoData | packet.opcode=IDI_Opcode__ItoMWr | packet.opcode=IDI_Opcode__CLFlush | packet.opcode=IDI_Opcode__CleanEvict | packet.opcode=IDI_Opcode__CleanEvictNoInvalidate | packet.opcode=IDI_Opcode__DirtyEvict | packet.opcode=IDI_Opcode__DirtyEvictNoInv | packet.opcode=IDI_Opcode__CleanEvictNoData | packet.opcode=IDI_Opcode__CLFlush_OPT | packet.opcode=IDI_Opcode__WOWrInv | packet.opcode=IDI_Opcode__WOWrInvF | packet.opcode=IDI_Opcode__WrInv | packet.opcode=IDI_Opcode__CLWB | packet.opcode=IDI_Opcode__MemWr | packet.opcode=IDI_Opcode__UcRdF | packet.opcode=IDI_Opcode__PrefetchtoSysCache | packet.opcode=IDI_Opcode__SetMonitor | packet.opcode=IDI_Opcode__ClrMonitor | packet.opcode=IDI_Opcode__RdCurr_ns ) then
    Channel__5__push(self.A2FReq, pkt);
  elsif (packet.opcode=IDI_Opcode__RspIHitI | packet.opcode=IDI_Opcode__RspSHitSE | packet.opcode=IDI_Opcode__RspIHitSE | packet.opcode=IDI_Opcode__RspVHitV | packet.opcode=IDI_Opcode__RspIFwdM | packet.opcode=IDI_Opcode__RspSFwdM | packet.opcode=IDI_Opcode__RspVFwdV | packet.opcode=IDI_Opcode__GOAck ) then
    pkt.network_id:=self.network_id;
    pkt.packet:=ipkt;
    Channel__8__push(self.A2FResp, pkt);
  elsif (packet.opcode = IDI_Opcode__Data) then
    Channel__9__push(self.A2FData, pkt);
  else
    assert False " Did not handle  packet.opcode  packet. In recv_agent_packet in link";
  endif;
end;

procedure Channel__7__push(var self: Channel__7; var pkt: AgentPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure Channel__6__push(var self: Channel__6; var pkt: AgentPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure Channel__10__push(var self: Channel__10; var pkt: AgentPacket);
begin
    Guard((self.count < MAX__1));
    if isundefined(guard_failed) then
      self.pkts[self.count] := pkt;
      self.count := (self.count + 1);
    endif;
end;

procedure Link__recv_fabric_packet(var self: Link; var packet: AgentPacket);
begin
  if (packet.packet.opcode = IDI_Opcode__Data) then
    Channel__7__push(self.F2AData, packet);
  elsif (packet.packet.opcode=IDI_Opcode__GO | packet.packet.opcode=IDI_Opcode__GoWritePull | packet.packet.opcode=IDI_Opcode__FastGO | packet.packet.opcode=IDI_Opcode__ExtCmp | packet.packet.opcode=IDI_Opcode__GoWritePullDrop | packet.packet.opcode=IDI_Opcode__FastGOWritePull | packet.packet.opcode=IDI_Opcode__WritePull ) then
    Channel__6__push(self.F2AResp, packet);
  elsif (packet.packet.opcode=IDI_Opcode__SnpData | packet.packet.opcode=IDI_Opcode__SnpCode | packet.packet.opcode=IDI_Opcode__SnpInv | packet.packet.opcode=IDI_Opcode__SnpCur | packet.packet.opcode=IDI_Opcode__BackInv ) then
    Channel__10__push(self.F2AReq, packet);
  else
    assert False " Did not handle  packet.packet.opcode  packet. in recv_fabric_packet in link";
  endif;
end;

procedure Link__recv_mc_packet(var self: Link; var packet: CXMPacket);
var
  idiPacket: IDIPacket;
  agentPacket: AgentPacket;
begin
  if (packet.opcode = CXM_Opcode__MemData) then
    idiPacket.opcode:=IDI_Opcode__Data;
    idiPacket.data:=packet.data;
    idiPacket.rtid:=packet.rtid;
    agentPacket.packet:=idiPacket;
    agentPacket.network_id:=self.network_id;
    Channel__7__push(self.F2AData, agentPacket);
  else
    assert False " Did not handle  packet.packet.opcode  packet. in recv_fabric_packet in link";
  endif;
end;

procedure rbw_port_transfer();
begin
if isundefined(guard_failed) then
  if !isundefined(self.IDICAgent[0].to_hbo__update) then
    Link__recv_agent_packet(self.idiclink[0],self.IDICAgent[0].to_hbo);
    undefine self.IDICAgent[0].to_hbo;
    undefine self.IDICAgent[0].to_hbo__update;
  elsif !isundefined(self.IDICAgent[1].to_hbo__update) then
    Link__recv_agent_packet(self.idiclink[1],self.IDICAgent[1].to_hbo);
    undefine self.IDICAgent[1].to_hbo;
    undefine self.IDICAgent[1].to_hbo__update;
  elsif !isundefined(self.IDICAgent[2].to_hbo__update) then
    Link__recv_agent_packet(self.idiclink[2],self.IDICAgent[2].to_hbo);
    undefine self.IDICAgent[2].to_hbo;
    undefine self.IDICAgent[2].to_hbo__update;
  elsif !isundefined(self.UPIAgent[0].to_ca__update[0]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[0],self.UPIAgent[0].to_ca[0]);
    undefine self.UPIAgent[0].to_ca[0];
    undefine self.UPIAgent[0].to_ca__update[0];
  elsif !isundefined(self.UPIAgent[0].to_ca__update[1]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[1],self.UPIAgent[0].to_ca[1]);
    undefine self.UPIAgent[0].to_ca[1];
    undefine self.UPIAgent[0].to_ca__update[1];
  elsif !isundefined(self.UPIAgent[0].to_ca__update[2]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[2],self.UPIAgent[0].to_ca[2]);
    undefine self.UPIAgent[0].to_ca[2];
    undefine self.UPIAgent[0].to_ca__update[2];
  elsif !isundefined(self.UPIAgent[0].to_ca__update[3]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[3],self.UPIAgent[0].to_ca[3]);
    undefine self.UPIAgent[0].to_ca[3];
    undefine self.UPIAgent[0].to_ca__update[3];
  elsif !isundefined(self.UPIAgent[0].to_hbo__update) then
    ULink__recv_ca_packet(self.santa[0],self.UPIAgent[0].to_hbo);
    undefine self.UPIAgent[0].to_hbo;
    undefine self.UPIAgent[0].to_hbo__update;
  elsif !isundefined(self.UPIAgent[1].to_ca__update[0]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[0],self.UPIAgent[1].to_ca[0]);
    undefine self.UPIAgent[1].to_ca[0];
    undefine self.UPIAgent[1].to_ca__update[0];
  elsif !isundefined(self.UPIAgent[1].to_ca__update[1]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[1],self.UPIAgent[1].to_ca[1]);
    undefine self.UPIAgent[1].to_ca[1];
    undefine self.UPIAgent[1].to_ca__update[1];
  elsif !isundefined(self.UPIAgent[1].to_ca__update[2]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[2],self.UPIAgent[1].to_ca[2]);
    undefine self.UPIAgent[1].to_ca[2];
    undefine self.UPIAgent[1].to_ca__update[2];
  elsif !isundefined(self.UPIAgent[1].to_ca__update[3]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[3],self.UPIAgent[1].to_ca[3]);
    undefine self.UPIAgent[1].to_ca[3];
    undefine self.UPIAgent[1].to_ca__update[3];
  elsif !isundefined(self.UPIAgent[1].to_hbo__update) then
    ULink__recv_ca_packet(self.santa[1],self.UPIAgent[1].to_hbo);
    undefine self.UPIAgent[1].to_hbo;
    undefine self.UPIAgent[1].to_hbo__update;
  elsif !isundefined(self.UPIAgent[2].to_ca__update[0]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[0],self.UPIAgent[2].to_ca[0]);
    undefine self.UPIAgent[2].to_ca[0];
    undefine self.UPIAgent[2].to_ca__update[0];
  elsif !isundefined(self.UPIAgent[2].to_ca__update[1]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[1],self.UPIAgent[2].to_ca[1]);
    undefine self.UPIAgent[2].to_ca[1];
    undefine self.UPIAgent[2].to_ca__update[1];
  elsif !isundefined(self.UPIAgent[2].to_ca__update[2]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[2],self.UPIAgent[2].to_ca[2]);
    undefine self.UPIAgent[2].to_ca[2];
    undefine self.UPIAgent[2].to_ca__update[2];
  elsif !isundefined(self.UPIAgent[2].to_ca__update[3]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[3],self.UPIAgent[2].to_ca[3]);
    undefine self.UPIAgent[2].to_ca[3];
    undefine self.UPIAgent[2].to_ca__update[3];
  elsif !isundefined(self.UPIAgent[2].to_hbo__update) then
    ULink__recv_ca_packet(self.santa[2],self.UPIAgent[2].to_hbo);
    undefine self.UPIAgent[2].to_hbo;
    undefine self.UPIAgent[2].to_hbo__update;
  elsif !isundefined(self.UPIAgent[3].to_ca__update[0]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[0],self.UPIAgent[3].to_ca[0]);
    undefine self.UPIAgent[3].to_ca[0];
    undefine self.UPIAgent[3].to_ca__update[0];
  elsif !isundefined(self.UPIAgent[3].to_ca__update[1]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[1],self.UPIAgent[3].to_ca[1]);
    undefine self.UPIAgent[3].to_ca[1];
    undefine self.UPIAgent[3].to_ca__update[1];
  elsif !isundefined(self.UPIAgent[3].to_ca__update[2]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[2],self.UPIAgent[3].to_ca[2]);
    undefine self.UPIAgent[3].to_ca[2];
    undefine self.UPIAgent[3].to_ca__update[2];
  elsif !isundefined(self.UPIAgent[3].to_ca__update[3]) then
    CA__recv_packet_from_peer_ca(self.UPIAgent[3],self.UPIAgent[3].to_ca[3]);
    undefine self.UPIAgent[3].to_ca[3];
    undefine self.UPIAgent[3].to_ca__update[3];
  elsif !isundefined(self.UPIAgent[3].to_hbo__update) then
    ULink__recv_ca_packet(self.santa[3],self.UPIAgent[3].to_hbo);
    undefine self.UPIAgent[3].to_hbo;
    undefine self.UPIAgent[3].to_hbo__update;
  elsif !isundefined(self.hbo.from_mc_to_idiclink__update[0]) then
    Link__recv_mc_packet(self.idiclink[0],self.hbo.from_mc_to_idiclink[0]);
    undefine self.hbo.from_mc_to_idiclink[0];
    undefine self.hbo.from_mc_to_idiclink__update[0];
  elsif !isundefined(self.hbo.from_mc_to_idiclink__update[1]) then
    Link__recv_mc_packet(self.idiclink[1],self.hbo.from_mc_to_idiclink[1]);
    undefine self.hbo.from_mc_to_idiclink[1];
    undefine self.hbo.from_mc_to_idiclink__update[1];
  elsif !isundefined(self.hbo.from_mc_to_idiclink__update[2]) then
    Link__recv_mc_packet(self.idiclink[2],self.hbo.from_mc_to_idiclink[2]);
    undefine self.hbo.from_mc_to_idiclink[2];
    undefine self.hbo.from_mc_to_idiclink__update[2];
  elsif !isundefined(self.hbo.from_mc_to_santa__update[0]) then
    ULink__recv_mc_packet(self.santa[0],self.hbo.from_mc_to_santa[0]);
    undefine self.hbo.from_mc_to_santa[0];
    undefine self.hbo.from_mc_to_santa__update[0];
  elsif !isundefined(self.hbo.from_mc_to_santa__update[1]) then
    ULink__recv_mc_packet(self.santa[1],self.hbo.from_mc_to_santa[1]);
    undefine self.hbo.from_mc_to_santa[1];
    undefine self.hbo.from_mc_to_santa__update[1];
  elsif !isundefined(self.hbo.from_mc_to_santa__update[2]) then
    ULink__recv_mc_packet(self.santa[2],self.hbo.from_mc_to_santa[2]);
    undefine self.hbo.from_mc_to_santa[2];
    undefine self.hbo.from_mc_to_santa__update[2];
  elsif !isundefined(self.hbo.from_mc_to_santa__update[3]) then
    ULink__recv_mc_packet(self.santa[3],self.hbo.from_mc_to_santa[3]);
    undefine self.hbo.from_mc_to_santa[3];
    undefine self.hbo.from_mc_to_santa__update[3];
  elsif !isundefined(self.hbo.to_ca__update[0]) then
    ULink__recv_ha_packet(self.santa[0],self.hbo.to_ca[0]);
    undefine self.hbo.to_ca[0];
    undefine self.hbo.to_ca__update[0];
  elsif !isundefined(self.hbo.to_ca__update[1]) then
    ULink__recv_ha_packet(self.santa[1],self.hbo.to_ca[1]);
    undefine self.hbo.to_ca[1];
    undefine self.hbo.to_ca__update[1];
  elsif !isundefined(self.hbo.to_ca__update[2]) then
    ULink__recv_ha_packet(self.santa[2],self.hbo.to_ca[2]);
    undefine self.hbo.to_ca[2];
    undefine self.hbo.to_ca__update[2];
  elsif !isundefined(self.hbo.to_ca__update[3]) then
    ULink__recv_ha_packet(self.santa[3],self.hbo.to_ca[3]);
    undefine self.hbo.to_ca[3];
    undefine self.hbo.to_ca__update[3];
  elsif !isundefined(self.hbo.to_idicagent__update[0]) then
    Link__recv_fabric_packet(self.idiclink[0],self.hbo.to_idicagent[0]);
    undefine self.hbo.to_idicagent[0];
    undefine self.hbo.to_idicagent__update[0];
  elsif !isundefined(self.hbo.to_idicagent__update[1]) then
    Link__recv_fabric_packet(self.idiclink[1],self.hbo.to_idicagent[1]);
    undefine self.hbo.to_idicagent[1];
    undefine self.hbo.to_idicagent__update[1];
  elsif !isundefined(self.hbo.to_idicagent__update[2]) then
    Link__recv_fabric_packet(self.idiclink[2],self.hbo.to_idicagent[2]);
    undefine self.hbo.to_idicagent[2];
    undefine self.hbo.to_idicagent__update[2];
  elsif !isundefined(self.idiclink[0].to_agent__update) then
    IDIAgent__recv_packet_from_hbo(self.IDICAgent[0],self.idiclink[0].to_agent);
    undefine self.idiclink[0].to_agent;
    undefine self.idiclink[0].to_agent__update;
  elsif !isundefined(self.idiclink[0].to_fabric__update) then
    HBo__recv_idi_packet(self.hbo,self.idiclink[0].to_fabric);
    undefine self.idiclink[0].to_fabric;
    undefine self.idiclink[0].to_fabric__update;
  elsif !isundefined(self.idiclink[1].to_agent__update) then
    IDIAgent__recv_packet_from_hbo(self.IDICAgent[1],self.idiclink[1].to_agent);
    undefine self.idiclink[1].to_agent;
    undefine self.idiclink[1].to_agent__update;
  elsif !isundefined(self.idiclink[1].to_fabric__update) then
    HBo__recv_idi_packet(self.hbo,self.idiclink[1].to_fabric);
    undefine self.idiclink[1].to_fabric;
    undefine self.idiclink[1].to_fabric__update;
  elsif !isundefined(self.idiclink[2].to_agent__update) then
    IDIAgent__recv_packet_from_hbo(self.IDICAgent[2],self.idiclink[2].to_agent);
    undefine self.idiclink[2].to_agent;
    undefine self.idiclink[2].to_agent__update;
  elsif !isundefined(self.idiclink[2].to_fabric__update) then
    HBo__recv_idi_packet(self.hbo,self.idiclink[2].to_fabric);
    undefine self.idiclink[2].to_fabric;
    undefine self.idiclink[2].to_fabric__update;
  elsif !isundefined(self.santa[0].to_ca__update) then
    CA__recv_packet_from_hbo(self.UPIAgent[0],self.santa[0].to_ca);
    undefine self.santa[0].to_ca;
    undefine self.santa[0].to_ca__update;
  elsif !isundefined(self.santa[0].to_core__update) then
    CA__recv_packet_from_santa(self.UPIAgent[0],self.santa[0].to_core);
    undefine self.santa[0].to_core;
    undefine self.santa[0].to_core__update;
  elsif !isundefined(self.santa[0].to_ha__update) then
    HBo__recv_upi_packet(self.hbo,self.santa[0].to_ha);
    undefine self.santa[0].to_ha;
    undefine self.santa[0].to_ha__update;
  elsif !isundefined(self.santa[1].to_ca__update) then
    CA__recv_packet_from_hbo(self.UPIAgent[1],self.santa[1].to_ca);
    undefine self.santa[1].to_ca;
    undefine self.santa[1].to_ca__update;
  elsif !isundefined(self.santa[1].to_core__update) then
    CA__recv_packet_from_santa(self.UPIAgent[1],self.santa[1].to_core);
    undefine self.santa[1].to_core;
    undefine self.santa[1].to_core__update;
  elsif !isundefined(self.santa[1].to_ha__update) then
    HBo__recv_upi_packet(self.hbo,self.santa[1].to_ha);
    undefine self.santa[1].to_ha;
    undefine self.santa[1].to_ha__update;
  elsif !isundefined(self.santa[2].to_ca__update) then
    CA__recv_packet_from_hbo(self.UPIAgent[2],self.santa[2].to_ca);
    undefine self.santa[2].to_ca;
    undefine self.santa[2].to_ca__update;
  elsif !isundefined(self.santa[2].to_core__update) then
    CA__recv_packet_from_santa(self.UPIAgent[2],self.santa[2].to_core);
    undefine self.santa[2].to_core;
    undefine self.santa[2].to_core__update;
  elsif !isundefined(self.santa[2].to_ha__update) then
    HBo__recv_upi_packet(self.hbo,self.santa[2].to_ha);
    undefine self.santa[2].to_ha;
    undefine self.santa[2].to_ha__update;
  elsif !isundefined(self.santa[3].to_ca__update) then
    CA__recv_packet_from_hbo(self.UPIAgent[3],self.santa[3].to_ca);
    undefine self.santa[3].to_ca;
    undefine self.santa[3].to_ca__update;
  elsif !isundefined(self.santa[3].to_core__update) then
    CA__recv_packet_from_santa(self.UPIAgent[3],self.santa[3].to_core);
    undefine self.santa[3].to_core;
    undefine self.santa[3].to_core__update;
  elsif !isundefined(self.santa[3].to_ha__update) then
    HBo__recv_upi_packet(self.hbo,self.santa[3].to_ha);
    undefine self.santa[3].to_ha;
    undefine self.santa[3].to_ha__update;
endif;
endif;
end;

procedure HBo__send_snoop_to_idicagent(var self: HBo; htid: HTID; agent: IDICAgents);
var
  packet: IDIPacket;
  agentPacket: AgentPacket;
begin
    Guard((self.tractor[htid].valid &  (!(self.coh_ll[self.tractor[htid].address].valid) |  (self.coh_ll[self.tractor[htid].address].head = htid) ) ));
    if isundefined(guard_failed) then
    Guard(self.tractor[htid].sf_lookup_done);
    if isundefined(guard_failed) then
    Guard(self.tractor[htid].snpneeded);
    if isundefined(guard_failed) then
    Guard(!(self.tractor[htid].idic_peer_snooped[agent]));
    if isundefined(guard_failed) then
    Guard(self.tractor[htid].idic_snoop_target[agent]);
    if isundefined(guard_failed) then
      packet.opcode:=self.tractor[htid].idic_snoop_opcode[agent];
      packet.htid:=htid;
      packet.address:=self.tractor[htid].address;
      agentPacket.packet:=packet;
      agentPacket.network_id:=agent;
      self.to_idicagent[agent] := agentPacket;
      self.to_idicagent__update[agent]:=True;
      rbw_port_transfer();
      self.tractor[htid].idic_peer_snooped[agent] := True;
      self.tractor[htid].ro_count := (self.tractor[htid].ro_count + 1);
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__send_snoop_to_upiagent(var self: HBo; htid: HTID; agent: UPIAgents);
var
  packet: UPIPacket;
begin
    Guard((self.tractor[htid].valid &  (!(self.coh_ll[self.tractor[htid].address].valid) |  (self.coh_ll[self.tractor[htid].address].head = htid) ) ));
    if isundefined(guard_failed) then
    Guard(self.tractor[htid].sf_lookup_done);
    if isundefined(guard_failed) then
    Guard(self.tractor[htid].snpneeded);
    if isundefined(guard_failed) then
    Guard(!(self.tractor[htid].upi_peer_snooped[agent]));
    if isundefined(guard_failed) then
    Guard(self.tractor[htid].upi_snoop_target[agent]);
    if isundefined(guard_failed) then
      if (self.tractor[htid].upi_snoop_opcode[agent]=UPI_Opcode__SnpInvOwn | self.tractor[htid].upi_snoop_opcode[agent]=UPI_Opcode__SnpCode | self.tractor[htid].upi_snoop_opcode[agent]=UPI_Opcode__SnpDataMig | self.tractor[htid].upi_snoop_opcode[agent]=UPI_Opcode__SnpData ) then
        packet.opcode:=self.tractor[htid].upi_snoop_opcode[agent];
        packet.htid:=htid;
        packet.address:=self.tractor[htid].address;
        packet.crnid:=self.tractor[htid].agent_id;
        packet.rtid:=self.tractor[htid].rtid;
      else
        packet.opcode:=self.tractor[htid].upi_snoop_opcode[agent];
        packet.htid:=htid;
        packet.address:=self.tractor[htid].address;
      endif;
      self.to_ca[agent] := packet;
      self.to_ca__update[agent]:=True;
      rbw_port_transfer();
      self.tractor[htid].upi_peer_snooped[agent] := True;
      self.tractor[htid].ro_count := (self.tractor[htid].ro_count + 1);
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__send_fastgo_response_to_idicagent(var self: HBo; htid: HTID);
var
  packet: IDIPacket;
  agentPacket: AgentPacket;
begin
    Guard((self.tractor[htid].valid &  (!(self.coh_ll[self.tractor[htid].address].valid) |  (self.coh_ll[self.tractor[htid].address].head = htid) ) ));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].protocol = Protocol__IDIC));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB ));
    if isundefined(guard_failed) then
    Guard(!(self.tractor[htid].resp_sent));
    if isundefined(guard_failed) then
    Guard(self.tractor[htid].sf_lookup_done);
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].snpdone |  !(self.tractor[htid].snpneeded) ));
    if isundefined(guard_failed) then
      packet.opcode:=IDI_Opcode__FastGO;
      packet.rtid:=self.tractor[htid].rtid;
      agentPacket.packet:=packet;
      agentPacket.network_id:=self.tractor[htid].agent_id;
      self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
      self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
      rbw_port_transfer();
      self.tractor[htid].resp_sent := True;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__send_response_for_clrmonitor(var self: HBo; htid: HTID);
var
  packet: IDIPacket;
  agentPacket: AgentPacket;
begin
    Guard((self.tractor[htid].valid &  (self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode = IDI_Opcode__ClrMonitor) ));
    if isundefined(guard_failed) then
      for id: MonitorSize do
          if self.monitor[id].valid then
            if ((self.monitor[id].address = self.tractor[htid].address) &  (self.monitor[id].agent_id = self.tractor[htid].agent_id) ) then
              MonitorEntry__release_monitorentry(self.monitor[id]);
            endif;
          endif;
      endfor;
      packet.opcode:=IDI_Opcode__GO;
      packet.cachestate:=CacheState__I;
      packet.rtid:=self.tractor[htid].rtid;
      agentPacket.packet:=packet;
      agentPacket.network_id:=self.tractor[htid].agent_id;
      self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
      self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
      rbw_port_transfer();
    TractorEntry__release_tractorentry(self.tractor[htid]);
    endif;
end;

procedure HBo__send_early_response_to_idicagent(var self: HBo; htid: HTID);
var
  packet: IDIPacket;
  agentPacket: AgentPacket;
begin
    Guard((self.tractor[htid].valid &  (!(self.coh_ll[self.tractor[htid].address].valid) |  (self.coh_ll[self.tractor[htid].address].head = htid) ) ));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].protocol = Protocol__IDIC));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__MemWr | self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB | self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoData | self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__WrInv ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__MemWr | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv )) |  (self.tractor[htid].sf_lookup_done &  (self.tractor[htid].snpdone |  !(self.tractor[htid].snpneeded) ) &  !(self.tractor[htid].resp_sent) ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoData )) |  (self.tractor[htid].sf_lookup_done &  !(self.tractor[htid].resp_sent) ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB )) |  (self.tractor[htid].sf_lookup_done &  (self.tractor[htid].snpdone |  !(self.tractor[htid].snpneeded) ) &  !(self.tractor[htid].resp_sent) ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate )) |  (self.tractor[htid].sf_lookup_done &  !(self.tractor[htid].resp_sent) ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF )) |  (self.tractor[htid].sf_lookup_done &  (self.tractor[htid].snpdone |  !(self.tractor[htid].snpneeded) ) &  !(self.tractor[htid].resp_sent) ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__WrInv )) |  (self.tractor[htid].sf_lookup_done &  (self.tractor[htid].snpdone |  !(self.tractor[htid].snpneeded) ) &  !(self.tractor[htid].resp_sent) ) ));
    if isundefined(guard_failed) then
      if (self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__MemWr | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv ) then
        packet.opcode:=IDI_Opcode__GoWritePull;
        packet.rtid:=self.tractor[htid].rtid;
        packet.htid:=htid;
        self.tractor[htid].iresp_opcode := IDI_Opcode__GoWritePull;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoData ) then
        packet.opcode:=IDI_Opcode__GO;
        packet.cachestate:=CacheState__I;
        packet.rtid:=self.tractor[htid].rtid;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB ) then
        packet.opcode:=IDI_Opcode__FastGO;
        packet.rtid:=self.tractor[htid].rtid;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate ) then
        if !(mufasa_mode) then
          packet.opcode:=IDI_Opcode__GoWritePullDrop;
          packet.rtid:=self.tractor[htid].rtid;
          packet.htid:=htid;
          self.tractor[htid].iresp_opcode := IDI_Opcode__GoWritePullDrop;
        else
          packet.opcode:=IDI_Opcode__GoWritePull;
          packet.rtid:=self.tractor[htid].rtid;
          packet.htid:=htid;
          self.tractor[htid].iresp_opcode := IDI_Opcode__GoWritePull;
        endif;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF ) then
        packet.opcode:=IDI_Opcode__FastGOWritePull;
        packet.rtid:=self.tractor[htid].rtid;
        packet.htid:=htid;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__WrInv ) then
        packet.opcode:=IDI_Opcode__WritePull;
        packet.rtid:=self.tractor[htid].rtid;
        packet.htid:=htid;
      else
        assert False " Guard needs to be updted";
      endif;
      agentPacket.packet:=packet;
      agentPacket.network_id:=self.tractor[htid].agent_id;
      self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
      self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
      rbw_port_transfer();
      self.tractor[htid].resp_sent := True;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__send_late_response_to_idicagent(var self: HBo; htid: HTID);
var
  packet: IDIPacket;
  agentPacket: AgentPacket;
  monid: MonitorSize;
  flag: boolean;
begin
    Guard(self.tractor[htid].valid);
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].protocol = Protocol__IDIC));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__RdOwnNoData | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__CLFlush | self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB | self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__WrInv | self.tractor[htid].iopcode=IDI_Opcode__UcRdF | self.tractor[htid].iopcode=IDI_Opcode__PrefetchtoSysCache ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__RdOwnNoData | self.tractor[htid].iopcode=IDI_Opcode__CLFlush | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF | self.tractor[htid].iopcode=IDI_Opcode__PrefetchtoSysCache )) |  !(self.tractor[htid].resp_sent) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB )) |  (!(self.tractor[htid].extcmp_sent) &  self.tractor[htid].resp_sent ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__WrInv )) |  (self.tractor[htid].data_recvd &  !(self.tractor[htid].extcmp_sent) ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__SetMonitor )) |  HBo__is_available_monitor_entry(self) ));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].in_mem_domain &  (self.mem_ll[self.tractor[htid].address].head = htid) ));
    if isundefined(guard_failed) then
    Guard((!(self.tractor[htid].lateMfsLkupNeeded) |  self.tractor[htid].late_mufasa_lookup_done ));
    if isundefined(guard_failed) then
    Guard((!(self.tractor[htid].mfsUpdateNeeded) |  self.tractor[htid].mufasa_alloc_update_done ));
    if isundefined(guard_failed) then
    Guard((!(disable_early_wrcmp_other) |  (!((self.tractor[htid].mem_op_assigned &  (!(self.tractor[htid].mem_op_init=Mem_Op__Fwd) ) )) |  (self.tractor[htid].mem_req_sent &  self.tractor[htid].mem_resp_recvd ) ) ));
    if isundefined(guard_failed) then
      if (self.tractor[htid].iopcode=IDI_Opcode__RdAny ) then
        if self.tractor[htid].limit_S then
          packet.opcode:=IDI_Opcode__GO;
          packet.cachestate:=CacheState__S;
          packet.rtid:=self.tractor[htid].rtid;
          agentPacket.packet:=packet;
          agentPacket.network_id:=self.tractor[htid].agent_id;
          self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
          self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
          if (self.tractor[htid].prlrd_req_sent &  !(self.tractor[htid].prlrd_resp_recvd) ) then
            self.ifa[self.tractor[htid].ifa_id].dataE := False;
          endif;
        elsif (self.tractor[htid].snoop_data_recvd &  !(dont_go_m) ) then
          packet.opcode:=IDI_Opcode__GO;
          packet.cachestate:=CacheState__M;
          packet.rtid:=self.tractor[htid].rtid;
          agentPacket.packet:=packet;
          agentPacket.network_id:=self.tractor[htid].agent_id;
          self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
          self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
        else
          packet.opcode:=IDI_Opcode__GO;
          packet.cachestate:=CacheState__E;
          packet.rtid:=self.tractor[htid].rtid;
          agentPacket.packet:=packet;
          agentPacket.network_id:=self.tractor[htid].agent_id;
          self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
          self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
          if (self.tractor[htid].prlrd_req_sent &  !(self.tractor[htid].prlrd_resp_recvd) ) then
            self.ifa[self.tractor[htid].ifa_id].dataE := True;
          endif;
        endif;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__RdOwn ) then
        if (self.tractor[htid].snoop_data_recvd &  !(dont_go_m) ) then
          packet.opcode:=IDI_Opcode__GO;
          packet.cachestate:=CacheState__M;
          packet.rtid:=self.tractor[htid].rtid;
          agentPacket.packet:=packet;
          agentPacket.network_id:=self.tractor[htid].agent_id;
          self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
          self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
        else
          packet.opcode:=IDI_Opcode__GO;
          packet.cachestate:=CacheState__E;
          packet.rtid:=self.tractor[htid].rtid;
          agentPacket.packet:=packet;
          agentPacket.network_id:=self.tractor[htid].agent_id;
          self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
          self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
        endif;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__RdOwnNoData ) then
        if self.tractor[htid].snoop_data_recvd then
          if mem_abstracted then
            self.mem[self.tractor[htid].address] := self.tractor[htid].data;
          endif;
        endif;
        packet.opcode:=IDI_Opcode__GO;
        packet.cachestate:=CacheState__E;
        packet.rtid:=self.tractor[htid].rtid;
        agentPacket.packet:=packet;
        agentPacket.network_id:=self.tractor[htid].agent_id;
        self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
        self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
      elsif (self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor ) then
        packet.opcode:=IDI_Opcode__GO;
        packet.cachestate:=CacheState__S;
        packet.rtid:=self.tractor[htid].rtid;
        agentPacket.packet:=packet;
        agentPacket.network_id:=self.tractor[htid].agent_id;
        self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
        self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
        if (self.tractor[htid].iopcode = IDI_Opcode__SetMonitor) then
          monid := HBo__available_monitor_entry(self);
          flag := True;
          for id: MonitorSize do
              if self.monitor[id].valid then
                if ((self.monitor[id].address = self.tractor[htid].address) &  (self.monitor[id].agent_id = self.tractor[htid].agent_id) ) then
                  flag := False;
                endif;
              endif;
          endfor;
          if flag then
            MonitorEntry__load(self.monitor[monid], self.tractor[htid].address, self.tractor[htid].agent_id);
          else
            assert False " two back to back set monitor without clr monitor for address:  self.tractor[htid].address  and agent:  self.tractor[htid].agent_id";
          endif;
        endif;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__CLFlush | self.tractor[htid].iopcode=IDI_Opcode__UcRdF | self.tractor[htid].iopcode=IDI_Opcode__PrefetchtoSysCache ) then
        packet.opcode:=IDI_Opcode__GO;
        packet.cachestate:=CacheState__I;
        packet.rtid:=self.tractor[htid].rtid;
        agentPacket.packet:=packet;
        agentPacket.network_id:=self.tractor[htid].agent_id;
        self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
        self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
      elsif (self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB ) then
        packet.opcode:=IDI_Opcode__ExtCmp;
        packet.rtid:=self.tractor[htid].rtid;
        agentPacket.packet:=packet;
        agentPacket.network_id:=self.tractor[htid].agent_id;
        self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
        self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
        self.tractor[htid].extcmp_sent := True;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF ) then
        packet.opcode:=IDI_Opcode__ExtCmp;
        packet.rtid:=self.tractor[htid].rtid;
        agentPacket.packet:=packet;
        agentPacket.network_id:=self.tractor[htid].agent_id;
        self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
        self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
        self.tractor[htid].extcmp_sent := True;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__WrInv ) then
        packet.opcode:=IDI_Opcode__GO;
        packet.cachestate:=CacheState__I;
        packet.rtid:=self.tractor[htid].rtid;
        agentPacket.packet:=packet;
        agentPacket.network_id:=self.tractor[htid].agent_id;
        self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
        self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
        self.tractor[htid].extcmp_sent := True;
      endif;
      self.tractor[htid].resp_sent := True;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__send_data_to_idicagent(var self: HBo; htid: HTID);
var
  packet: IDIPacket;
  agentPacket: AgentPacket;
begin
    Guard((self.tractor[htid].valid &  !(self.tractor[htid].data_sent) ));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].protocol = Protocol__IDIC));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF | self.tractor[htid].iopcode=IDI_Opcode__RdCurr_ns ));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].in_mem_domain &  (self.mem_ll[self.tractor[htid].address].head = htid) ));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].data_recvd |  self.tractor[htid].snoop_data_recvd ));
    if isundefined(guard_failed) then
    Guard((!(self.tractor[htid].lateMfsLkupNeeded) |  self.tractor[htid].late_mufasa_lookup_done ));
    if isundefined(guard_failed) then
    Guard((!(self.tractor[htid].mfsUpdateNeeded) |  self.tractor[htid].mufasa_alloc_update_done ));
    if isundefined(guard_failed) then
      if (self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__RdOwn ) then
        if self.tractor[htid].snoop_data_recvd then
          packet.opcode:=IDI_Opcode__Data;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
          if self.tractor[htid].limit_S then
            if mem_abstracted then
              self.mem[self.tractor[htid].address] := self.tractor[htid].data;
            endif;
          endif;
        elsif mem_abstracted then
          packet.opcode:=IDI_Opcode__Data;
          packet.data:=self.mem[self.tractor[htid].address];
          packet.rtid:=self.tractor[htid].rtid;
        else
          packet.opcode:=IDI_Opcode__Data;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
        endif;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdCurr_ns ) then
        if self.tractor[htid].snoop_data_recvd then
          packet.opcode:=IDI_Opcode__Data;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
          if self.tractor[htid].wb_recvd then
            if mem_abstracted then
              self.mem[self.tractor[htid].address] := self.tractor[htid].data;
            endif;
          endif;
        else
          packet.opcode:=IDI_Opcode__Data;
          packet.data:=self.mem[self.tractor[htid].address];
          packet.rtid:=self.tractor[htid].rtid;
        endif;
      elsif (self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF ) then
        if self.tractor[htid].snoop_data_recvd then
          packet.opcode:=IDI_Opcode__Data;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
          if mem_abstracted then
            self.mem[self.tractor[htid].address] := self.tractor[htid].data;
          endif;
        elsif mem_abstracted then
          packet.opcode:=IDI_Opcode__Data;
          packet.data:=self.mem[self.tractor[htid].address];
          packet.rtid:=self.tractor[htid].rtid;
        else
          packet.opcode:=IDI_Opcode__Data;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
        endif;
      endif;
      agentPacket.packet:=packet;
      agentPacket.network_id:=self.tractor[htid].agent_id;
      self.to_idicagent[self.tractor[htid].agent_id] := agentPacket;
      self.to_idicagent__update[self.tractor[htid].agent_id]:=True;
      rbw_port_transfer();
      self.tractor[htid].data_sent := True;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__release_tractor_entry(var self: HBo; htid: HTID);
begin
    Guard((self.tractor[htid].valid &  (self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__RdOwnNoData | self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__CLFlush | self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__WrInv | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoData | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__MemWr | self.tractor[htid].iopcode=IDI_Opcode__CLWB | self.tractor[htid].iopcode=IDI_Opcode__UcRdF | self.tractor[htid].iopcode=IDI_Opcode__PrefetchtoSysCache | self.tractor[htid].iopcode=IDI_Opcode__RdCurr_ns ) ));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].snpdone |  !(self.tractor[htid].snpneeded) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF )) |  ((self.tractor[htid].data_sent |  (self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init=Mem_Op__Fwd ) ) ) &  self.tractor[htid].resp_sent ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdCurr_ns )) |  (self.tractor[htid].data_sent |  (self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init=Mem_Op__Fwd ) ) ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__MemWr )) |  (self.tractor[htid].data_recvd &  self.tractor[htid].in_mem_domain ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__RdOwnNoData | self.tractor[htid].iopcode=IDI_Opcode__CLFlush | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoData | self.tractor[htid].iopcode=IDI_Opcode__PrefetchtoSysCache )) |  self.tractor[htid].resp_sent ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB )) |  (self.tractor[htid].extcmp_sent &  self.tractor[htid].resp_sent ) ));
    if isundefined(guard_failed) then
    Guard((!(self.tractor[htid].in_mem_domain) |  (self.mem_ll[self.tractor[htid].address].head = htid) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate )) |  (self.tractor[htid].resp_sent &  self.tractor[htid].data_recvd &  self.tractor[htid].in_mem_domain ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv )) |  (self.tractor[htid].data_recvd &  self.tractor[htid].in_mem_domain ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__WrInv )) |  self.tractor[htid].extcmp_sent ));
    if isundefined(guard_failed) then
    Guard((((self.tractor[htid].iopcode=IDI_Opcode__PrefetchtoSysCache ) &  (self.mem_ll[self.tractor[htid].address].head = htid) ) |  ((!(self.tractor[htid].iopcode=IDI_Opcode__PrefetchtoSysCache) ) &  (self.coh_ll[self.tractor[htid].address].head = htid) ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init=Mem_Op__Write_M | self.tractor[htid].mem_op_init=Mem_Op__Snoop_M | self.tractor[htid].mem_op_init=Mem_Op__Read | self.tractor[htid].mem_op_init=Mem_Op__Write_P ) )) |  (self.tractor[htid].mem_req_sent &  self.tractor[htid].mem_resp_recvd ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init=Mem_Op__Fwd ) )) |  self.tractor[htid].mem_req_sent ));
    if isundefined(guard_failed) then
      if (self.tractor[htid].sf_hit &  self.sf[self.tractor[htid].sf_way].valid ) then
        self.sf[self.tractor[htid].sf_way].allocAvoid := False;
      endif;
      if (self.tractor[htid].iopcode=IDI_Opcode__PrefetchtoSysCache ) then
        if (self.mem_ll[self.tractor[htid].address].tail = htid) then
          self.mem_ll[self.tractor[htid].address].valid := False;
          undefine self.mem_ll[self.tractor[htid].address].head;
          undefine self.mem_ll[self.tractor[htid].address].tail;
        else
          self.mem_ll[self.tractor[htid].address].head := self.tractor[self.mem_ll[self.tractor[htid].address].head].next_entry_m;
        endif;
        TractorEntry__release_tractorentry(self.tractor[htid]);
      else
        HBo__update_and_free_tractor_entry(self, htid);
      endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__send_response_to_upiagent(var self: HBo; htid: HTID);
var
  packet: UPIPacket;
begin
    Guard(self.tractor[htid].valid);
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].protocol = Protocol__UPI));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].uopcode=UPI_Opcode__RdCur | self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__InvXtoI | self.tractor[htid].uopcode=UPI_Opcode__InvItoE | self.tractor[htid].uopcode=UPI_Opcode__RdInv | self.tractor[htid].uopcode=UPI_Opcode__InvItoM | self.tractor[htid].uopcode=UPI_Opcode__WbMtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoS | self.tractor[htid].uopcode=UPI_Opcode__WbMtoE | self.tractor[htid].uopcode=UPI_Opcode__WbEtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoIPtl | self.tractor[htid].uopcode=UPI_Opcode__WbMtoEPtl ));
    if isundefined(guard_failed) then
    Guard(!(self.tractor[htid].resp_sent));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].in_mem_domain &  (self.mem_ll[self.tractor[htid].address].head = htid) ));
    if isundefined(guard_failed) then
    Guard((!(self.tractor[htid].lateMfsLkupNeeded) |  self.tractor[htid].late_mufasa_lookup_done ));
    if isundefined(guard_failed) then
    Guard((!(self.tractor[htid].mfsUpdateNeeded) |  self.tractor[htid].mufasa_alloc_update_done ));
    if isundefined(guard_failed) then
    Guard((!(disable_early_wrcmp_upiwb) |  (!((self.tractor[htid].mem_op_assigned &  (!(self.tractor[htid].mem_op_init=Mem_Op__Read) & !(self.tractor[htid].mem_op_init=Mem_Op__Fwd) ) )) |  (self.tractor[htid].mem_req_sent &  self.tractor[htid].mem_resp_recvd ) ) ));
    if isundefined(guard_failed) then
      if (self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__InvXtoI | self.tractor[htid].uopcode=UPI_Opcode__RdCur ) then
        packet.opcode:=UPI_Opcode__SI_CmpO;
        packet.rtid:=self.tractor[htid].rtid;
        self.to_ca[self.tractor[htid].agent_id] := packet;
        self.to_ca__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
      elsif (self.tractor[htid].uopcode=UPI_Opcode__RdData ) then
        if self.tractor[htid].limit_S then
          packet.opcode:=UPI_Opcode__SI_CmpO;
          packet.rtid:=self.tractor[htid].rtid;
          self.to_ca[self.tractor[htid].agent_id] := packet;
          self.to_ca__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
        else
          packet.opcode:=UPI_Opcode__E_CmpO;
          packet.rtid:=self.tractor[htid].rtid;
          self.to_ca[self.tractor[htid].agent_id] := packet;
          self.to_ca__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
        endif;
      elsif (self.tractor[htid].uopcode=UPI_Opcode__RdDataMig ) then
        if self.tractor[htid].limit_S then
          packet.opcode:=UPI_Opcode__SI_CmpO;
          packet.rtid:=self.tractor[htid].rtid;
          self.to_ca[self.tractor[htid].agent_id] := packet;
          self.to_ca__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
        elsif (self.tractor[htid].snoop_data_recvd &  !(dont_go_m) ) then
          if (self.tractor[htid].resp_state = CacheState__E) then
            packet.opcode:=UPI_Opcode__E_CmpO;
            packet.rtid:=self.tractor[htid].rtid;
          else
            packet.opcode:=UPI_Opcode__M_CmpO;
            packet.rtid:=self.tractor[htid].rtid;
          endif;
          self.to_ca[self.tractor[htid].agent_id] := packet;
          self.to_ca__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
        else
          if (self.tractor[htid].resp_state = CacheState__E) then
            packet.opcode:=UPI_Opcode__E_CmpO;
            packet.rtid:=self.tractor[htid].rtid;
          elsif (self.tractor[htid].resp_state = CacheState__M) then
            packet.opcode:=UPI_Opcode__M_CmpO;
            packet.rtid:=self.tractor[htid].rtid;
          endif;
          self.to_ca[self.tractor[htid].agent_id] := packet;
          self.to_ca__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
        endif;
      elsif (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) then
        if (self.tractor[htid].snoop_data_recvd &  !(dont_go_m) ) then
          packet.opcode:=UPI_Opcode__M_CmpO;
          packet.rtid:=self.tractor[htid].rtid;
          self.to_ca[self.tractor[htid].agent_id] := packet;
          self.to_ca__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
        else
          if (self.tractor[htid].resp_state = CacheState__E) then
            packet.opcode:=UPI_Opcode__E_CmpO;
            packet.rtid:=self.tractor[htid].rtid;
          elsif (self.tractor[htid].resp_state = CacheState__M) then
            packet.opcode:=UPI_Opcode__M_CmpO;
            packet.rtid:=self.tractor[htid].rtid;
          endif;
          self.to_ca[self.tractor[htid].agent_id] := packet;
          self.to_ca__update[self.tractor[htid].agent_id]:=True;
          rbw_port_transfer();
        endif;
      elsif (self.tractor[htid].uopcode=UPI_Opcode__InvItoE | self.tractor[htid].uopcode=UPI_Opcode__InvItoM | self.tractor[htid].uopcode=UPI_Opcode__RdInv ) then
        packet.opcode:=UPI_Opcode__E_CmpO;
        packet.rtid:=self.tractor[htid].rtid;
        self.to_ca[self.tractor[htid].agent_id] := packet;
        self.to_ca__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
        if self.tractor[htid].snoop_data_recvd then
          if mem_abstracted then
            self.mem[self.tractor[htid].address] := self.tractor[htid].data;
          endif;
        endif;
      elsif (self.tractor[htid].uopcode=UPI_Opcode__WbMtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoS | self.tractor[htid].uopcode=UPI_Opcode__WbMtoE | self.tractor[htid].uopcode=UPI_Opcode__WbEtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoIPtl | self.tractor[htid].uopcode=UPI_Opcode__WbMtoEPtl ) then
        packet.opcode:=UPI_Opcode__CmpU;
        packet.rtid:=self.tractor[htid].rtid;
        self.to_ca[self.tractor[htid].agent_id] := packet;
        self.to_ca__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
      else
        assert False " Support not added to send response packet for opcode  self.tractor[htid].uopcode";
      endif;
      self.tractor[htid].resp_sent := True;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__send_data_to_upiagent(var self: HBo; htid: HTID);
var
  packet: UPIPacket;
begin
    Guard((self.tractor[htid].valid &  !(self.tractor[htid].data_sent) ));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].protocol = Protocol__UPI));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv | self.tractor[htid].uopcode=UPI_Opcode__RdCur ));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].in_mem_domain &  (self.mem_ll[self.tractor[htid].address].head = htid) ));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].data_recvd |  self.tractor[htid].snoop_data_recvd ));
    if isundefined(guard_failed) then
    Guard((!(self.tractor[htid].mem_op_assigned) |  (self.tractor[htid].mem_op_init != Mem_Op__Fwd) ));
    if isundefined(guard_failed) then
    Guard((!(self.tractor[htid].lateMfsLkupNeeded) |  self.tractor[htid].late_mufasa_lookup_done ));
    if isundefined(guard_failed) then
    Guard((!(self.tractor[htid].mfsUpdateNeeded) |  self.tractor[htid].mufasa_alloc_update_done ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init = Mem_Op__Read) )) |  (self.tractor[htid].mem_req_sent &  self.tractor[htid].mem_resp_recvd ) ));
    if isundefined(guard_failed) then
      if (self.tractor[htid].uopcode=UPI_Opcode__RdCode ) then
        if self.tractor[htid].snoop_data_recvd then
          packet.opcode:=UPI_Opcode__Data_SI;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
          if mem_abstracted then
            self.mem[self.tractor[htid].address] := self.tractor[htid].data;
          endif;
        elsif mem_abstracted then
          packet.opcode:=UPI_Opcode__Data_SI;
          packet.data:=self.mem[self.tractor[htid].address];
          packet.rtid:=self.tractor[htid].rtid;
        else
          packet.opcode:=UPI_Opcode__Data_SI;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
        endif;
        self.to_ca[self.tractor[htid].agent_id] := packet;
        self.to_ca__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
      elsif (self.tractor[htid].uopcode=UPI_Opcode__RdData ) then
        if self.tractor[htid].limit_S then
          if self.tractor[htid].snoop_data_recvd then
            packet.opcode:=UPI_Opcode__Data_SI;
            packet.data:=self.tractor[htid].data;
            packet.rtid:=self.tractor[htid].rtid;
            if mem_abstracted then
              self.mem[self.tractor[htid].address] := self.tractor[htid].data;
            endif;
          elsif mem_abstracted then
            packet.opcode:=UPI_Opcode__Data_SI;
            packet.data:=self.mem[self.tractor[htid].address];
            packet.rtid:=self.tractor[htid].rtid;
          else
            packet.opcode:=UPI_Opcode__Data_SI;
            packet.data:=self.tractor[htid].data;
            packet.rtid:=self.tractor[htid].rtid;
          endif;
        elsif self.tractor[htid].snoop_data_recvd then
          packet.opcode:=UPI_Opcode__Data_E;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
          if mem_abstracted then
            self.mem[self.tractor[htid].address] := self.tractor[htid].data;
          endif;
        elsif mem_abstracted then
          packet.opcode:=UPI_Opcode__Data_E;
          packet.data:=self.mem[self.tractor[htid].address];
          packet.rtid:=self.tractor[htid].rtid;
        else
          packet.opcode:=UPI_Opcode__Data_E;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
        endif;
        self.to_ca[self.tractor[htid].agent_id] := packet;
        self.to_ca__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
      elsif (self.tractor[htid].uopcode=UPI_Opcode__RdDataMig ) then
        if self.tractor[htid].limit_S then
          if self.tractor[htid].snoop_data_recvd then
            packet.opcode:=UPI_Opcode__Data_SI;
            packet.data:=self.tractor[htid].data;
            packet.rtid:=self.tractor[htid].rtid;
            if mem_abstracted then
              self.mem[self.tractor[htid].address] := self.tractor[htid].data;
            endif;
          elsif mem_abstracted then
            packet.opcode:=UPI_Opcode__Data_SI;
            packet.data:=self.mem[self.tractor[htid].address];
            packet.rtid:=self.tractor[htid].rtid;
          else
            packet.opcode:=UPI_Opcode__Data_SI;
            packet.data:=self.tractor[htid].data;
            packet.rtid:=self.tractor[htid].rtid;
          endif;
        elsif (self.tractor[htid].snoop_data_recvd &  !(dont_go_m) ) then
          packet.opcode:=UPI_Opcode__Data_M;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
        elsif mem_abstracted then
          packet.opcode:=UPI_Opcode__Data_E;
          packet.data:=self.mem[self.tractor[htid].address];
          packet.rtid:=self.tractor[htid].rtid;
        else
          packet.opcode:=UPI_Opcode__Data_E;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
        endif;
        self.to_ca[self.tractor[htid].agent_id] := packet;
        self.to_ca__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
      elsif (self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) then
        if (self.tractor[htid].snoop_data_recvd &  !(dont_go_m) ) then
          packet.opcode:=UPI_Opcode__Data_M;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
        elsif mem_abstracted then
          packet.opcode:=UPI_Opcode__Data_E;
          packet.data:=self.mem[self.tractor[htid].address];
          packet.rtid:=self.tractor[htid].rtid;
        else
          packet.opcode:=UPI_Opcode__Data_E;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
        endif;
        self.to_ca[self.tractor[htid].agent_id] := packet;
        self.to_ca__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
      elsif (self.tractor[htid].uopcode=UPI_Opcode__RdInv ) then
        if self.tractor[htid].snoop_data_recvd then
          if mem_abstracted then
            self.mem[self.tractor[htid].address] := self.tractor[htid].data;
          endif;
        endif;
        if mem_abstracted then
          packet.opcode:=UPI_Opcode__Data_E;
          packet.data:=self.mem[self.tractor[htid].address];
          packet.rtid:=self.tractor[htid].rtid;
        else
          packet.opcode:=UPI_Opcode__Data_E;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
        endif;
        self.to_ca[self.tractor[htid].agent_id] := packet;
        self.to_ca__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
      elsif (self.tractor[htid].uopcode=UPI_Opcode__RdCur ) then
        if self.tractor[htid].snoop_data_recvd then
          if self.tractor[htid].wb_recvd then
            if mem_abstracted then
              self.mem[self.tractor[htid].address] := self.tractor[htid].data;
            endif;
          endif;
          packet.opcode:=UPI_Opcode__Data_SI;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
        elsif mem_abstracted then
          packet.opcode:=UPI_Opcode__Data_SI;
          packet.data:=self.mem[self.tractor[htid].address];
          packet.rtid:=self.tractor[htid].rtid;
        else
          packet.opcode:=UPI_Opcode__Data_SI;
          packet.data:=self.tractor[htid].data;
          packet.rtid:=self.tractor[htid].rtid;
        endif;
        self.to_ca[self.tractor[htid].agent_id] := packet;
        self.to_ca__update[self.tractor[htid].agent_id]:=True;
        rbw_port_transfer();
      endif;
      self.tractor[htid].data_sent := True;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__release_tractor_uentry(var self: HBo; htid: HTID);
begin
    Guard((self.tractor[htid].valid &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__InvXtoI | self.tractor[htid].uopcode=UPI_Opcode__InvItoE | self.tractor[htid].uopcode=UPI_Opcode__RdInv | self.tractor[htid].uopcode=UPI_Opcode__InvItoM | self.tractor[htid].uopcode=UPI_Opcode__WbMtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoS | self.tractor[htid].uopcode=UPI_Opcode__WbMtoE | self.tractor[htid].uopcode=UPI_Opcode__WbEtoI | self.tractor[htid].uopcode=UPI_Opcode__RdCur | self.tractor[htid].uopcode=UPI_Opcode__WbMtoEPtl | self.tractor[htid].uopcode=UPI_Opcode__WbMtoIPtl ) ));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].snpdone |  !(self.tractor[htid].snpneeded) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv | self.tractor[htid].uopcode=UPI_Opcode__RdCur )) |  ((self.tractor[htid].data_sent |  (self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init=Mem_Op__Fwd ) ) ) &  self.tractor[htid].resp_sent ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].uopcode=UPI_Opcode__InvXtoI | self.tractor[htid].uopcode=UPI_Opcode__InvItoE | self.tractor[htid].uopcode=UPI_Opcode__InvItoM | self.tractor[htid].uopcode=UPI_Opcode__WbMtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoS | self.tractor[htid].uopcode=UPI_Opcode__WbMtoE | self.tractor[htid].uopcode=UPI_Opcode__WbEtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoEPtl | self.tractor[htid].uopcode=UPI_Opcode__WbMtoIPtl )) |  self.tractor[htid].resp_sent ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__InvXtoI | self.tractor[htid].uopcode=UPI_Opcode__InvItoE | self.tractor[htid].uopcode=UPI_Opcode__RdInv | self.tractor[htid].uopcode=UPI_Opcode__InvItoM | self.tractor[htid].uopcode=UPI_Opcode__RdCur )) |  (self.coh_ll[self.tractor[htid].address].head = htid) ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__InvXtoI | self.tractor[htid].uopcode=UPI_Opcode__InvItoE | self.tractor[htid].uopcode=UPI_Opcode__RdInv | self.tractor[htid].uopcode=UPI_Opcode__InvItoM | self.tractor[htid].uopcode=UPI_Opcode__RdCur ) &  self.tractor[htid].in_mem_domain )) |  (self.mem_ll[self.tractor[htid].address].head = htid) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].uopcode=UPI_Opcode__ReqFwdCnflt | self.tractor[htid].uopcode=UPI_Opcode__WbMtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoS | self.tractor[htid].uopcode=UPI_Opcode__WbMtoE | self.tractor[htid].uopcode=UPI_Opcode__WbEtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoIPtl | self.tractor[htid].uopcode=UPI_Opcode__WbMtoEPtl )) |  (self.mem_ll[self.tractor[htid].address].head = htid) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init=Mem_Op__Write_M | self.tractor[htid].mem_op_init=Mem_Op__Snoop_M | self.tractor[htid].mem_op_init=Mem_Op__Read | self.tractor[htid].mem_op_init=Mem_Op__Write_P ) )) |  (self.tractor[htid].mem_req_sent &  self.tractor[htid].mem_resp_recvd ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init=Mem_Op__Fwd ) )) |  self.tractor[htid].mem_req_sent ));
    if isundefined(guard_failed) then
      if (self.tractor[htid].sf_hit &  self.sf[self.tractor[htid].sf_way].valid ) then
        self.sf[self.tractor[htid].sf_way].allocAvoid := False;
      endif;
      if (self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__InvXtoI | self.tractor[htid].uopcode=UPI_Opcode__InvItoE | self.tractor[htid].uopcode=UPI_Opcode__RdInv | self.tractor[htid].uopcode=UPI_Opcode__InvItoM | self.tractor[htid].uopcode=UPI_Opcode__RdCur ) then
        if (self.coh_ll[self.tractor[htid].address].tail = htid) then
          self.coh_ll[self.tractor[htid].address].valid := False;
          undefine self.coh_ll[self.tractor[htid].address].head;
          undefine self.coh_ll[self.tractor[htid].address].tail;
        else
          self.coh_ll[self.tractor[htid].address].head := self.tractor[self.coh_ll[self.tractor[htid].address].head].next_entry_c;
        endif;
        if (self.mem_ll[self.tractor[htid].address].valid &  (self.mem_ll[self.tractor[htid].address].tail = htid) ) then
          self.mem_ll[self.tractor[htid].address].valid := False;
          undefine self.mem_ll[self.tractor[htid].address].head;
          undefine self.mem_ll[self.tractor[htid].address].tail;
        elsif (self.mem_ll[self.tractor[htid].address].valid &  (self.mem_ll[self.tractor[htid].address].head = htid) ) then
          self.mem_ll[self.tractor[htid].address].head := self.tractor[self.mem_ll[self.tractor[htid].address].head].next_entry_m;
        endif;
      elsif (self.tractor[htid].uopcode=UPI_Opcode__ReqFwdCnflt | self.tractor[htid].uopcode=UPI_Opcode__WbMtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoS | self.tractor[htid].uopcode=UPI_Opcode__WbMtoE | self.tractor[htid].uopcode=UPI_Opcode__WbEtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoIPtl | self.tractor[htid].uopcode=UPI_Opcode__WbMtoEPtl ) then
        if (self.mem_ll[self.tractor[htid].address].tail = htid) then
          self.mem_ll[self.tractor[htid].address].valid := False;
          undefine self.mem_ll[self.tractor[htid].address].head;
          undefine self.mem_ll[self.tractor[htid].address].tail;
        else
          self.mem_ll[self.tractor[htid].address].head := self.tractor[self.mem_ll[self.tractor[htid].address].head].next_entry_m;
        endif;
      endif;
    TractorEntry__release_tractorentry(self.tractor[htid]);
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__send_fwd_response(var self: HBo; htid: HTID);
var
  packet: UPIPacket;
begin
    Guard((self.tractor[htid].valid &  (self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode = UPI_Opcode__ReqFwdCnflt) ));
    if isundefined(guard_failed) then
      packet.opcode:=UPI_Opcode__FwdCnfltO;
      packet.rtid:=self.tractor[htid].rtid;
      self.to_ca[self.tractor[htid].agent_id] := packet;
      self.to_ca__update[self.tractor[htid].agent_id]:=True;
      rbw_port_transfer();
    TractorEntry__release_tractorentry(self.tractor[htid]);
    endif;
end;

function HBo__is_available_mctentry(var self: HBo):boolean;
var
  flag: boolean;
begin
    flag := False;
    for id: MEM_TORID do
        if !(self.mct[id].valid) then
          flag := True;
        endif;
    endfor;
    return flag;
end;

function HBo__available_mctentry(var self: HBo):MEM_TORID;
begin
    for id: MEM_TORID do
        if !(self.mct[id].valid) then
          return id;
        endif;
    endfor;
end;

procedure HBo__send_memory_request(var self: HBo; htid: HTID);
var
  way_found: MFS_WAYS;
  tag_match: Boolean;
  packet: CXMPacket;
  mctid: MEM_TORID;
begin
    Guard(!(mem_abstracted));
    if isundefined(guard_failed) then
    Guard((self.tractor[htid].valid &  self.tractor[htid].in_mem_domain &  self.tractor[htid].mem_op_assigned &  !(self.tractor[htid].mem_req_sent) ));
    if isundefined(guard_failed) then
    Guard((self.mem_ll[self.tractor[htid].address].valid &  (self.mem_ll[self.tractor[htid].address].head = htid) ));
    if isundefined(guard_failed) then
    Guard((!(self.tractor[htid].lateMfsLkupNeeded) |  self.tractor[htid].late_mufasa_lookup_done ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].mem_op_init=Mem_Op__Write_M | self.tractor[htid].mem_op_init=Mem_Op__Snoop_M | self.tractor[htid].mem_op_init=Mem_Op__Write_P | self.tractor[htid].mem_op_init=Mem_Op__Write_E ) &  self.tractor[htid].mfsUpdateNeeded )) |  self.tractor[htid].mufasa_alloc_update_done ));
    if isundefined(guard_failed) then
    Guard(HBo__is_available_mctentry(self));
    if isundefined(guard_failed) then
      tag_match := False;
      for way: MFS_WAYS do
          if (self.mufasa[way].valid &  (self.mufasa[way].address = self.tractor[htid].address) ) then
            tag_match := True;
            way_found := way;
          endif;
      endfor;
      if (self.tractor[htid].mem_op_init = Mem_Op__Write_P) then
        packet.address:=self.tractor[htid].address;
        packet.opcode:=CXM_Opcode__MemWrPtl;
        packet.data:=self.tractor[htid].data;
        packet.be:=self.tractor[htid].be;
        packet.txnid:=htid;
      elsif (self.tractor[htid].mem_op_init=Mem_Op__Write_M | self.tractor[htid].mem_op_init=Mem_Op__Snoop_M ) then
        packet.address:=self.tractor[htid].address;
        packet.opcode:=CXM_Opcode__MemWr;
        packet.data:=self.tractor[htid].data;
        packet.be:=self.tractor[htid].be;
        packet.txnid:=htid;
      elsif (self.tractor[htid].mem_op_init=Mem_Op__Read ) then
        packet.opcode:=CXM_Opcode__MemRd;
        packet.address:=self.tractor[htid].address;
        packet.prlrd:=False;
        packet.txnid:=htid;
      elsif (self.tractor[htid].mem_op_init=Mem_Op__Fwd ) then
        packet.opcode:=CXM_Opcode__MemRdFwd;
        packet.address:=self.tractor[htid].address;
        packet.txnid:=htid;
        packet.rtid:=self.tractor[htid].rtid;
        packet.agent_id:=self.tractor[htid].agent_id;
        packet.protocol:=self.tractor[htid].protocol;
        self.tractor[htid].data_sent := True;
      elsif (self.tractor[htid].mem_op_init=Mem_Op__Fill ) then
        packet.opcode:=CXM_Opcode__MemRd;
        packet.address:=self.tractor[htid].address;
        packet.prlrd:=False;
        packet.txnid:=htid;
      else
        assert False " Unsupported mem opcode  self.tractor[htid].mem_op_init";
      endif;
      if ((self.tractor[htid].mem_op_init=Mem_Op__Write_M | self.tractor[htid].mem_op_init=Mem_Op__Snoop_M | self.tractor[htid].mem_op_init=Mem_Op__Read | self.tractor[htid].mem_op_init=Mem_Op__Write_P | self.tractor[htid].mem_op_init=Mem_Op__Fwd | self.tractor[htid].mem_op_init=Mem_Op__Fill ) &  self.tractor[htid].mem_op_assigned ) then
        mctid := HBo__available_mctentry(self);
        MemTOREntry__load(self.mct[mctid], packet);
        self.count := (self.count + 1);
        self.tractor[htid].mem_req_sent := True;
      endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__send_memory_response(var self: HBo; index: MEM_TORID);
var
  packet: UPIPacket;
  cxm_packet: CXMPacket;
  idiPacket: IDIPacket;
  agentPacket: AgentPacket;
begin
    Guard(self.mct[index].valid);
    if isundefined(guard_failed) then
      if (self.mct[index].opcode = CXM_Opcode__MemRd) then
        if self.mct[index].prlrd then
          self.ifa[self.mct[index].txnid].data := self.mem[self.mct[index].address];
          if (self.ifa[self.mct[index].txnid].FOrDData = FOrDDataState__D) then
            if (self.tractor[self.ifa[self.mct[index].txnid].tractor_id].valid &  self.tractor[self.ifa[self.mct[index].txnid].tractor_id].prlrd_req_sent &  (self.tractor[self.ifa[self.mct[index].txnid].tractor_id].ifa_id = self.mct[index].txnid) ) then
              self.tractor[self.mct[index].txnid].prlrd_resp_recvd := True;
            endif;
            IFAEntry__release_ifaentry(self.ifa[self.mct[index].txnid]);
          elsif (self.ifa[self.mct[index].txnid].FOrDData = FOrDDataState__F) then
            if (self.ifa[self.mct[index].txnid].req_protocol = Protocol__UPI) then
              if self.ifa[self.mct[index].txnid].dataE then
                packet.opcode:=UPI_Opcode__Data_E;
                packet.data:=self.ifa[self.mct[index].txnid].data;
                packet.rtid:=self.ifa[self.mct[index].txnid].rtid;
              else
                packet.opcode:=UPI_Opcode__Data_SI;
                packet.data:=self.ifa[self.mct[index].txnid].data;
                packet.rtid:=self.ifa[self.mct[index].txnid].rtid;
              endif;
              self.to_ca[self.ifa[self.mct[index].txnid].agent_id] := packet;
              self.to_ca__update[self.ifa[self.mct[index].txnid].agent_id]:=True;
              rbw_port_transfer();
            else
              idiPacket.opcode:=IDI_Opcode__Data;
              idiPacket.data:=self.ifa[self.mct[index].txnid].data;
              idiPacket.rtid:=self.ifa[self.mct[index].txnid].rtid;
              agentPacket.packet:=idiPacket;
              agentPacket.network_id:=self.ifa[self.mct[index].txnid].agent_id;
              self.to_idicagent[self.ifa[self.mct[index].txnid].agent_id] := agentPacket;
              self.to_idicagent__update[self.ifa[self.mct[index].txnid].agent_id]:=True;
              rbw_port_transfer();
            endif;
            if (self.tractor[self.ifa[self.mct[index].txnid].tractor_id].valid &  self.tractor[self.ifa[self.mct[index].txnid].tractor_id].prlrd_req_sent &  (self.tractor[self.ifa[self.mct[index].txnid].tractor_id].ifa_id = self.mct[index].txnid) ) then
              self.tractor[self.mct[index].txnid].prlrd_resp_recvd := True;
            endif;
            IFAEntry__release_ifaentry(self.ifa[self.mct[index].txnid]);
          else
            if !(self.tractor[self.ifa[self.mct[index].txnid].tractor_id].snoop_data_recvd) then
              self.tractor[self.ifa[self.mct[index].txnid].tractor_id].data := self.ifa[self.mct[index].txnid].data;
            endif;
            self.tractor[self.ifa[self.mct[index].txnid].tractor_id].prlrd_resp_recvd := True;
            self.tractor[self.ifa[self.mct[index].txnid].tractor_id].data_recvd := True;
            IFAEntry__release_ifaentry(self.ifa[self.mct[index].txnid]);
          endif;
        else
          self.tractor[self.mct[index].txnid].data := self.mem[self.mct[index].address];
          self.tractor[self.mct[index].txnid].mem_resp_recvd := True;
          self.tractor[self.mct[index].txnid].data_recvd := True;
        endif;
      elsif (self.mct[index].opcode = CXM_Opcode__MemWr) then
        self.mem[self.mct[index].address] := self.mct[index].data;
        self.tractor[self.mct[index].txnid].mem_resp_recvd := True;
      elsif (self.mct[index].opcode = CXM_Opcode__MemWrPtl) then
        for word: Word do
            if self.mct[index].be[word] then
              self.mem[self.mct[index].address][word] := self.mct[index].data[word];
            endif;
        endfor;
        self.tractor[self.mct[index].txnid].mem_resp_recvd := True;
      elsif (self.mct[index].opcode = CXM_Opcode__MemRdFwd) then
        if (self.mct[index].protocol = Protocol__IDIC) then
          cxm_packet.rtid:=self.mct[index].rtid;
          cxm_packet.data:=self.mem[self.mct[index].address];
          cxm_packet.opcode:=CXM_Opcode__MemData;
          self.from_mc_to_idiclink[self.mct[index].agent_id] := cxm_packet;
          self.from_mc_to_idiclink__update[self.mct[index].agent_id]:=True;
          rbw_port_transfer();
        else
          cxm_packet.rtid:=self.mct[index].rtid;
          cxm_packet.data:=self.mem[self.mct[index].address];
          cxm_packet.opcode:=CXM_Opcode__MemData;
          self.from_mc_to_santa[self.mct[index].agent_id] := cxm_packet;
          self.from_mc_to_santa__update[self.mct[index].agent_id]:=True;
          rbw_port_transfer();
        endif;
      else
        assert False " response not added for opcode  self.mct[index].opcode";
      endif;
      for id:= index to (self.count - 1)-1 do
          self.mct[id] := self.mct[(id + 1)];
      endfor;
    MemTOREntry__reset(self.mct[(self.count - 1)]);
      self.count := (self.count - 1);
    endif;
end;

function HBo__request_requires_early_mufasa_lookup(var self: HBo; htid: HTID):boolean;
begin
    if ((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdCur | self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv ) ) then
      return True;
    elsif ((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF ) ) then
      return True;
    endif;
    return False;
end;

function HBo__request_with_goM_intention(var self: HBo; htid: HTID):boolean;
begin
    if ((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv ) &  !(dont_go_m) ) then
      return True;
    elsif ((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__RdOwn ) &  !(dont_go_m) ) then
      return True;
    endif;
    return False;
end;

procedure HBo__move_to_memory_domain(var self: HBo; htid: HTID);
begin
    Guard((self.tractor[htid].valid &  !(self.tractor[htid].in_mem_domain) ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__RdOwnNoData | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__CLFlush | self.tractor[htid].iopcode=IDI_Opcode__UcRdF | self.tractor[htid].iopcode=IDI_Opcode__RdCurr_ns ) )) |  (self.tractor[htid].sf_lookup_done &  (self.tractor[htid].snpdone |  !(self.tractor[htid].snpneeded) ) ) ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__MemWr | self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__WrInv ) )) |  self.tractor[htid].data_recvd ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB ) )) |  (self.tractor[htid].sf_lookup_done &  (self.tractor[htid].snpdone |  !(self.tractor[htid].snpneeded) ) &  self.tractor[htid].resp_sent ) ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate ) )) |  self.tractor[htid].data_recvd ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv ) )) |  self.tractor[htid].data_recvd ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].protocol = Protocol__IDIC)) |  (!(self.tractor[htid].iopcode=IDI_Opcode__ClrMonitor) & !(self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoData) ) ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdCur | self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__InvXtoI | self.tractor[htid].uopcode=UPI_Opcode__InvItoE | self.tractor[htid].uopcode=UPI_Opcode__RdInv | self.tractor[htid].uopcode=UPI_Opcode__InvItoM ) )) |  (self.tractor[htid].sf_lookup_done &  (self.tractor[htid].snpdone |  !(self.tractor[htid].snpneeded) ) ) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].protocol = Protocol__UPI)) |  (!(self.tractor[htid].uopcode=UPI_Opcode__ReqFwdCnflt) ) ));
    if isundefined(guard_failed) then
    Guard((self.coh_ll[self.tractor[htid].address].head = htid));
    if isundefined(guard_failed) then
    Guard((!(mufasa_mode) |  (!(HBo__request_requires_early_mufasa_lookup(self, htid)) |  self.tractor[htid].mfs_lookup_done ) ));
    if isundefined(guard_failed) then
      if self.mem_ll[self.tractor[htid].address].valid then
        self.tractor[self.mem_ll[self.tractor[htid].address].tail].next_entry_m := htid;
        self.mem_ll[self.tractor[htid].address].tail := htid;
      else
        self.mem_ll[self.tractor[htid].address].valid := True;
        self.mem_ll[self.tractor[htid].address].head := htid;
        self.mem_ll[self.tractor[htid].address].tail := htid;
      endif;
      self.tractor[htid].in_mem_domain := True;
      if (self.tractor[htid].protocol = Protocol__IDIC) then
        if (self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__RdCurr_ns | self.tractor[htid].iopcode=IDI_Opcode__UcRdF ) then
          if !(self.tractor[htid].snoop_data_recvd) then
            if (!(self.tractor[htid].prlrd_req_sent) &  !(self.tractor[htid].data_sent) ) then
              self.tractor[htid].mem_op_assigned := True;
              if !(self.tractor[htid].alloc_hint) then
                self.tractor[htid].mem_op_init := Mem_Op__Fwd;
              else
                self.tractor[htid].mem_op_init := Mem_Op__Read;
              endif;
            elsif self.tractor[htid].prlrd_req_sent then
              if self.tractor[htid].lateMfsLkupNeeded then
                self.tractor[htid].mem_op_assigned := True;
                self.tractor[htid].mem_op_init := Mem_Op__Read;
              endif;
            endif;
          elsif ((self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdCurr_ns ) &  self.tractor[htid].wb_recvd ) then
            self.tractor[htid].mem_op_assigned := True;
            self.tractor[htid].mem_op_init := Mem_Op__Snoop_M;
          elsif ((self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdAny ) &  self.tractor[htid].wb_recvd ) then
            if (dont_go_m |  self.tractor[htid].limit_S ) then
              self.tractor[htid].mem_op_assigned := True;
              self.tractor[htid].mem_op_init := Mem_Op__Snoop_M;
            elsif self.tractor[htid].data_sent then
              self.tractor[htid].mem_op_assigned := True;
              self.tractor[htid].mem_op_init := Mem_Op__Snoop_M;
            endif;
          elsif ((self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF ) &  self.tractor[htid].wb_recvd ) then
            self.tractor[htid].mem_op_assigned := True;
            self.tractor[htid].mem_op_init := Mem_Op__Snoop_M;
          endif;
        elsif (self.tractor[htid].iopcode=IDI_Opcode__RdOwnNoData | self.tractor[htid].iopcode=IDI_Opcode__CLFlush | self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB ) then
          if self.tractor[htid].snoop_data_recvd then
            self.tractor[htid].mem_op_assigned := True;
            self.tractor[htid].mem_op_init := Mem_Op__Snoop_M;
          endif;
        elsif (self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__MemWr | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv ) then
          self.tractor[htid].mem_op_assigned := True;
          self.tractor[htid].mem_op_init := Mem_Op__Write_M;
        elsif (self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate ) then
          self.tractor[htid].mem_op_assigned := True;
          self.tractor[htid].mem_op_init := Mem_Op__Write_E;
        elsif (self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WrInv ) then
          if self.tractor[htid].snoop_data_recvd then
            self.tractor[htid].mem_op_assigned := True;
            self.tractor[htid].mem_op_init := Mem_Op__Write_M;
          else
            self.tractor[htid].mem_op_assigned := True;
            self.tractor[htid].mem_op_init := Mem_Op__Write_P;
          endif;
        endif;
      elsif (self.tractor[htid].protocol = Protocol__UPI) then
        if (self.tractor[htid].uopcode=UPI_Opcode__RdCur | self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv ) then
          if !(self.tractor[htid].snoop_data_recvd) then
            if (!(self.tractor[htid].prlrd_req_sent) &  !(self.tractor[htid].data_sent) ) then
              if !(self.tractor[htid].alloc_hint) then
                self.tractor[htid].mem_op_init := Mem_Op__Fwd;
                self.tractor[htid].mem_op_assigned := True;
              else
                self.tractor[htid].mem_op_init := Mem_Op__Read;
                self.tractor[htid].mem_op_assigned := True;
              endif;
            elsif self.tractor[htid].prlrd_req_sent then
              if self.tractor[htid].lateMfsLkupNeeded then
                self.tractor[htid].mem_op_assigned := True;
                self.tractor[htid].mem_op_init := Mem_Op__Read;
              endif;
            endif;
          elsif ((self.tractor[htid].uopcode=UPI_Opcode__RdCur ) &  self.tractor[htid].wb_recvd ) then
            self.tractor[htid].mem_op_assigned := True;
            self.tractor[htid].mem_op_init := Mem_Op__Snoop_M;
          elsif ((self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn ) &  self.tractor[htid].wb_recvd ) then
            if (dont_go_m |  self.tractor[htid].limit_S ) then
              self.tractor[htid].mem_op_assigned := True;
              self.tractor[htid].mem_op_init := Mem_Op__Snoop_M;
            elsif self.tractor[htid].data_sent then
              self.tractor[htid].mem_op_assigned := True;
              self.tractor[htid].mem_op_init := Mem_Op__Snoop_M;
            endif;
          elsif ((self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdInv ) &  self.tractor[htid].wb_recvd ) then
            self.tractor[htid].mem_op_assigned := True;
            self.tractor[htid].mem_op_init := Mem_Op__Snoop_M;
          endif;
        elsif (self.tractor[htid].uopcode=UPI_Opcode__InvXtoI | self.tractor[htid].uopcode=UPI_Opcode__InvItoE | self.tractor[htid].uopcode=UPI_Opcode__InvItoM ) then
          if (self.tractor[htid].snoop_data_recvd &  self.tractor[htid].wb_recvd ) then
            self.tractor[htid].mem_op_assigned := True;
            self.tractor[htid].mem_op_init := Mem_Op__Snoop_M;
          endif;
        endif;
      endif;
      if mufasa_mode then
        if (self.tractor[htid].lateMfsLkupNeeded |  ((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__MemWr | self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__WrInv | self.tractor[htid].iopcode=IDI_Opcode__PrefetchtoSysCache ) ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__InvXtoI | self.tractor[htid].uopcode=UPI_Opcode__InvItoM | self.tractor[htid].uopcode=UPI_Opcode__InvItoM ) &  self.tractor[htid].snoop_data_recvd &  self.tractor[htid].alloc_hint ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdOwnNoData | self.tractor[htid].iopcode=IDI_Opcode__CLFlush | self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB ) &  self.tractor[htid].snoop_data_recvd &  self.tractor[htid].alloc_hint ) |  (self.tractor[htid].mfs_lookup_done &  !(self.tractor[htid].mfs_hit) &  self.tractor[htid].alloc_hint ) |  (self.tractor[htid].mfs_lookup_done &  self.tractor[htid].mfs_hit &  (self.tractor[htid].mfs_state=MFSState__E | self.tractor[htid].mfs_state=MFSState__M ) &  self.tractor[htid].snoop_data_recvd &  self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init = Mem_Op__Snoop_M) ) |  (self.tractor[htid].mfs_lookup_done &  self.tractor[htid].mfs_hit &  (self.tractor[htid].mfs_state = MFSState__M) &  HBo__request_with_goM_intention(self, htid) ) |  self.tractor[htid].mem_op_assigned ) then
          self.tractor[htid].lateMfsLkupNeeded := True;
          if self.tractor[htid].prlrd_req_sent then
            if (!(self.tractor[htid].prlrd_resp_recvd) &  (self.ifa[self.tractor[htid].ifa_id].FOrDData = FOrDDataState__F) ) then
              self.ifa[self.tractor[htid].ifa_id].FOrDData := FOrDDataState__Un;
              if self.tractor[htid].data_sent then
                self.tractor[htid].data_sent := False;
              endif;
            endif;
          endif;
        endif;
      endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__late_mufasa_lookup_phase(var self: HBo; htid: HTID);
var
  way: MFS_WAYS;
  way_found: boolean;
begin
    Guard((mufasa_mode &  self.tractor[htid].valid &  self.tractor[htid].in_mem_domain &  !(self.tractor[htid].late_mufasa_lookup_done) &  self.tractor[htid].lateMfsLkupNeeded &  (self.mem_ll[self.tractor[htid].address].head = htid) ));
    if isundefined(guard_failed) then
      way_found := False;
      for id: MFS_WAYS do
          if (self.mufasa[id].valid &  (self.mufasa[id].address = self.tractor[htid].address) ) then
            way_found := True;
            way := id;
          endif;
      endfor;
      if way_found then
        self.tractor[htid].mfs_hit := True;
        self.tractor[htid].mfs_state := self.mufasa[way].state;
        self.tractor[htid].mfs_way := way;
        if (self.mufasa[way].state=MFSState__E | self.mufasa[way].state=MFSState__M ) then
          if (!(self.tractor[htid].snoop_data_recvd) &  (((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv | self.tractor[htid].uopcode=UPI_Opcode__RdCur ) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__UcRdF | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__RdCurr_ns ) ) ) ) then
            self.tractor[htid].data_recvd := True;
            self.tractor[htid].data := self.mufasa[way].data;
            if (self.tractor[htid].prlrd_req_sent &  !(self.tractor[htid].prlrd_resp_recvd) ) then
              self.ifa[self.tractor[htid].ifa_id].FOrDData := FOrDDataState__D;
              if self.tractor[htid].data_sent then
                self.tractor[htid].data_sent := False;
              endif;
            endif;
          endif;
          if (!(self.tractor[htid].snoop_data_recvd) &  (!(self.tractor[htid].mem_op_assigned) |  (!(self.tractor[htid].mem_op_init=Mem_Op__Write_M) & !(self.tractor[htid].mem_op_init=Mem_Op__Write_P) & !(self.tractor[htid].mem_op_init=Mem_Op__Write_E) ) ) ) then
            self.tractor[htid].mem_op_assigned := False;
          endif;
        endif;
      endif;
      self.tractor[htid].late_mufasa_lookup_done := True;
      if (((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__WbMtoI | self.tractor[htid].uopcode=UPI_Opcode__WbMtoS | self.tractor[htid].uopcode=UPI_Opcode__WbMtoE | self.tractor[htid].uopcode=UPI_Opcode__WbMtoIPtl | self.tractor[htid].uopcode=UPI_Opcode__WbMtoEPtl ) &  (way_found |  self.tractor[htid].alloc_hint ) ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__WbEtoI ) &  (!(way_found) &  self.tractor[htid].alloc_hint ) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__ItoMWr | self.tractor[htid].iopcode=IDI_Opcode__MemWr | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvict | self.tractor[htid].iopcode=IDI_Opcode__DirtyEvictNoInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInv | self.tractor[htid].iopcode=IDI_Opcode__WOWrInvF | self.tractor[htid].iopcode=IDI_Opcode__WrInv | self.tractor[htid].iopcode=IDI_Opcode__PrefetchtoSysCache ) &  (way_found |  self.tractor[htid].alloc_hint ) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__CleanEvict | self.tractor[htid].iopcode=IDI_Opcode__CleanEvictNoInvalidate ) &  (!(way_found) &  self.tractor[htid].alloc_hint ) ) |  (self.tractor[htid].mfs_lookup_done &  !(self.tractor[htid].mfs_hit) &  self.tractor[htid].alloc_hint ) |  ((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__InvXtoI | self.tractor[htid].uopcode=UPI_Opcode__InvItoM | self.tractor[htid].uopcode=UPI_Opcode__InvItoE ) &  self.tractor[htid].snoop_data_recvd &  (way_found |  self.tractor[htid].alloc_hint ) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdOwnNoData | self.tractor[htid].iopcode=IDI_Opcode__CLFlush | self.tractor[htid].iopcode=IDI_Opcode__CLFlush_OPT | self.tractor[htid].iopcode=IDI_Opcode__CLWB ) &  self.tractor[htid].snoop_data_recvd &  (way_found |  self.tractor[htid].alloc_hint ) ) |  ((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdCurr_ns ) &  self.tractor[htid].snoop_data_recvd &  self.tractor[htid].wb_recvd &  (way_found |  self.tractor[htid].alloc_hint ) ) |  (self.tractor[htid].mfs_lookup_done &  self.tractor[htid].mfs_hit &  (self.tractor[htid].mfs_state=MFSState__E | self.tractor[htid].mfs_state=MFSState__M ) &  self.tractor[htid].snoop_data_recvd ) |  (self.tractor[htid].mfs_lookup_done &  self.tractor[htid].mfs_hit &  (self.tractor[htid].mfs_state = MFSState__M) &  HBo__request_with_goM_intention(self, htid) ) ) then
        self.tractor[htid].mfsUpdateNeeded := True;
      endif;
      if (!(self.tractor[htid].mfsUpdateNeeded) &  self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init = Mem_Op__Write_E) ) then
        self.tractor[htid].mem_op_assigned := False;
      endif;
    endif;
end;

function HBo__is_available_mfs_way(var self: HBo):Boolean;
begin
    for id: MFS_WAYS do
        if !(self.mufasa[id].valid) then
          return True;
        endif;
    endfor;
    return False;
end;

procedure HBo__mufasa_alloc_and_update(var self: HBo; htid: HTID);
var
  avail_way: MFS_WAYS;
begin
    Guard((self.tractor[htid].valid &  self.tractor[htid].late_mufasa_lookup_done &  !(self.tractor[htid].mufasa_alloc_update_done) &  self.tractor[htid].mfsUpdateNeeded &  (self.mem_ll[self.tractor[htid].address].head = htid) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init=Mem_Op__Write_M | self.tractor[htid].mem_op_init=Mem_Op__Snoop_M | self.tractor[htid].mem_op_init=Mem_Op__Write_E | self.tractor[htid].mem_op_init=Mem_Op__Read | self.tractor[htid].mem_op_init=Mem_Op__Fill ) &  self.tractor[htid].alloc_hint &  !(self.tractor[htid].mfs_hit) )) |  HBo__is_available_mfs_way(self) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init=Mem_Op__Read ) &  self.tractor[htid].alloc_hint &  !(self.tractor[htid].mfs_hit) )) |  self.tractor[htid].mem_resp_recvd ));
    if isundefined(guard_failed) then
    Guard((!((!(self.tractor[htid].mem_op_assigned) &  self.tractor[htid].alloc_hint &  !(self.tractor[htid].mfs_hit) &  self.tractor[htid].prlrd_req_sent )) |  self.tractor[htid].prlrd_resp_recvd ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].mem_op_assigned &  (self.tractor[htid].mem_op_init=Mem_Op__Fill ) &  self.tractor[htid].alloc_hint &  !(self.tractor[htid].mfs_hit) )) |  self.tractor[htid].mem_resp_recvd ));
    if isundefined(guard_failed) then
      if self.tractor[htid].mem_op_assigned then
        if (self.tractor[htid].mem_op_init=Mem_Op__Write_M | self.tractor[htid].mem_op_init=Mem_Op__Snoop_M ) then
          if (self.tractor[htid].alloc_hint &  !(self.tractor[htid].mfs_hit) ) then
            for id: MFS_WAYS do
                if !(self.mufasa[id].valid) then
                  avail_way := id;
                endif;
            endfor;
            self.mufasa[avail_way].valid := True;
            self.mufasa[avail_way].state := MFSState__M;
            self.mufasa[avail_way].address := self.tractor[htid].address;
            self.mufasa[avail_way].data := self.tractor[htid].data;
            self.tractor[htid].mem_op_assigned := False;
          elsif (self.tractor[htid].mfs_hit &  (self.tractor[htid].mfs_state=MFSState__E | self.tractor[htid].mfs_state=MFSState__M ) ) then
            self.mufasa[self.tractor[htid].mfs_way].state := MFSState__M;
            self.mufasa[self.tractor[htid].mfs_way].data := self.tractor[htid].data;
            self.tractor[htid].mem_op_assigned := False;
          endif;
        elsif (self.tractor[htid].mem_op_init = Mem_Op__Write_E) then
          if (self.tractor[htid].alloc_hint &  !(self.tractor[htid].mfs_hit) ) then
            for id: MFS_WAYS do
                if !(self.mufasa[id].valid) then
                  avail_way := id;
                endif;
            endfor;
            self.mufasa[avail_way].valid := True;
            self.mufasa[avail_way].state := MFSState__E;
            self.mufasa[avail_way].address := self.tractor[htid].address;
            self.mufasa[avail_way].data := self.tractor[htid].data;
            self.tractor[htid].mem_op_assigned := False;
          endif;
        elsif (self.tractor[htid].mem_op_init = Mem_Op__Write_P) then
          if (self.tractor[htid].mfs_hit &  (self.tractor[htid].mfs_state=MFSState__E | self.tractor[htid].mfs_state=MFSState__M ) ) then
            self.mufasa[self.tractor[htid].mfs_way].state := MFSState__M;
            for word: Word do
                if self.tractor[htid].be[word] then
                  self.mufasa[self.tractor[htid].mfs_way].data[word] := self.tractor[htid].data[word];
                endif;
            endfor;
            self.tractor[htid].mem_op_assigned := False;
          endif;
        elsif (self.tractor[htid].mem_op_init=Mem_Op__Read | self.tractor[htid].mem_op_init=Mem_Op__Fwd ) then
          if (self.tractor[htid].mfs_hit &  (self.tractor[htid].mfs_state = MFSState__M) ) then
            if HBo__request_with_goM_intention(self, htid) then
              self.mufasa[self.tractor[htid].mfs_way].state := MFSState__E;
              self.tractor[htid].mem_op_assigned := False;
            endif;
          elsif (self.tractor[htid].alloc_hint &  !(self.tractor[htid].mfs_hit) ) then
            for id: MFS_WAYS do
                if !(self.mufasa[id].valid) then
                  avail_way := id;
                endif;
            endfor;
            self.mufasa[avail_way].valid := True;
            self.mufasa[avail_way].state := MFSState__E;
            self.mufasa[avail_way].address := self.tractor[htid].address;
            self.mufasa[avail_way].data := self.tractor[htid].data;
          endif;
        elsif (self.tractor[htid].mem_op_init=Mem_Op__Fill ) then
          if (self.tractor[htid].alloc_hint &  !(self.tractor[htid].mfs_hit) ) then
            for id: MFS_WAYS do
                if !(self.mufasa[id].valid) then
                  avail_way := id;
                endif;
            endfor;
            self.mufasa[avail_way].valid := True;
            self.mufasa[avail_way].state := MFSState__E;
            self.mufasa[avail_way].address := self.tractor[htid].address;
            self.mufasa[avail_way].data := self.tractor[htid].data;
          endif;
        endif;
      endif;
      self.tractor[htid].mufasa_alloc_update_done := True;
      if (self.coh_ll[self.tractor[htid].address].valid &  !((self.coh_ll[self.tractor[htid].address].head = htid)) ) then
        self.tractor[self.coh_ll[self.tractor[htid].address].head].lateMfsLkupNeeded := True;
        if self.tractor[self.coh_ll[self.tractor[htid].address].head].prlrd_req_sent then
          if !(self.tractor[self.coh_ll[self.tractor[htid].address].head].prlrd_resp_recvd) then
            self.ifa[self.tractor[self.coh_ll[self.tractor[htid].address].head].ifa_id].FOrDData := FOrDDataState__D;
            if self.tractor[self.coh_ll[self.tractor[htid].address].head].data_sent then
              self.tractor[self.coh_ll[self.tractor[htid].address].head].data_sent := False;
            endif;
          endif;
        endif;
      endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

function HBo__is_available_ifa_entry(var self: HBo):boolean;
begin
    for id: IFASize do
        if !(self.ifa[id].valid) then
          return True;
        endif;
    endfor;
    return False;
end;

function HBo__available_ifa_entry(var self: HBo):IFASize;
begin
    for id: IFASize do
        if !(self.ifa[id].valid) then
          return id;
        endif;
    endfor;
end;

function HBo__no_pending_mem_ll_request_for_same_address(var self: HBo; htid: HTID; address: Address):boolean;
begin
    for id: HTID do
        if ((id != htid) &  self.tractor[id].valid &  self.tractor[id].in_mem_domain &  (self.tractor[id].address = address) ) then
          return False;
        endif;
    endfor;
    return True;
end;

procedure HBo__mufasa_early_read(var self: HBo; htid: HTID);
begin
    Guard((self.tractor[htid].valid &  self.tractor[htid].sf_lookup_done &  self.tractor[htid].snpneeded &  !(self.tractor[htid].snpdone) &  !(self.tractor[htid].mfs_read_done) &  self.coh_ll[self.tractor[htid].address].valid &  (self.coh_ll[self.tractor[htid].address].head = htid) &  !(self.tractor[htid].data_sent) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].protocol = Protocol__IDIC)) |  (self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF ) ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF ) )) |  !(self.tractor[htid].snoop_data_recvd) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].protocol = Protocol__UPI)) |  (self.tractor[htid].uopcode=UPI_Opcode__RdCur | self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv ) ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdCur | self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv ) )) |  !(self.tractor[htid].snoop_data_recvd) ));
    if isundefined(guard_failed) then
    Guard((!((mufasa_mode &  HBo__request_requires_early_mufasa_lookup(self, htid) )) |  (self.tractor[htid].mfs_lookup_done &  self.tractor[htid].mfs_hit &  (self.tractor[htid].mfs_state=MFSState__E | self.tractor[htid].mfs_state=MFSState__M ) &  (self.mufasa[self.tractor[htid].mfs_way].state=MFSState__E | self.mufasa[self.tractor[htid].mfs_way].state=MFSState__M ) ) ));
    if isundefined(guard_failed) then
    Guard(prll_lkup_enabled);
    if isundefined(guard_failed) then
      if !(self.tractor[htid].snoop_data_recvd) then
        self.tractor[htid].data := self.mufasa[self.tractor[htid].mfs_way].data;
      endif;
      self.tractor[htid].mfs_read_done := True;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure HBo__send_parallel_mem_read_request(var self: HBo; htid: HTID);
var
  ifa_id: IFASize;
  packet: CXMPacket;
  mctid: MEM_TORID;
begin
    Guard((self.tractor[htid].valid &  self.tractor[htid].sf_lookup_done &  self.tractor[htid].snpneeded &  !(self.tractor[htid].snpdone) &  HBo__is_available_ifa_entry(self) &  !(self.tractor[htid].prlrd_req_sent) &  self.coh_ll[self.tractor[htid].address].valid &  (self.coh_ll[self.tractor[htid].address].head = htid) &  !(self.tractor[htid].data_sent) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].protocol = Protocol__IDIC)) |  (self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF ) ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__RdAny | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF ) )) |  !(self.tractor[htid].snoop_data_recvd) ));
    if isundefined(guard_failed) then
    Guard((!((self.tractor[htid].protocol = Protocol__UPI)) |  (self.tractor[htid].uopcode=UPI_Opcode__RdCur | self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv ) ));
    if isundefined(guard_failed) then
    Guard((!(((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdCur | self.tractor[htid].uopcode=UPI_Opcode__RdCode | self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv ) )) |  !(self.tractor[htid].snoop_data_recvd) ));
    if isundefined(guard_failed) then
    Guard(HBo__is_available_mctentry(self));
    if isundefined(guard_failed) then
    Guard((!(mufasa_mode) |  !(self.tractor[htid].alloc_hint) ));
    if isundefined(guard_failed) then
    Guard((!((mufasa_mode &  HBo__request_requires_early_mufasa_lookup(self, htid) )) |  (self.tractor[htid].mfs_lookup_done &  (!(self.tractor[htid].mfs_hit) |  (self.tractor[htid].mfs_state = MFSState__I) ) ) ));
    if isundefined(guard_failed) then
    Guard(HBo__no_pending_mem_ll_request_for_same_address(self, htid, self.tractor[htid].address));
    if isundefined(guard_failed) then
    Guard(prll_lkup_enabled);
    if isundefined(guard_failed) then
      ifa_id := HBo__available_ifa_entry(self);
    IFAEntry__load(self.ifa[ifa_id], htid, self.tractor[htid].rtid, self.tractor[htid].agent_id, self.tractor[htid].protocol);
      if ((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdCurr | self.tractor[htid].iopcode=IDI_Opcode__RdShared | self.tractor[htid].iopcode=IDI_Opcode__SetMonitor | self.tractor[htid].iopcode=IDI_Opcode__UcRdF ) ) then
        self.ifa[ifa_id].dataE := False;
      elsif ((self.tractor[htid].protocol = Protocol__IDIC) &  (self.tractor[htid].iopcode=IDI_Opcode__RdOwn | self.tractor[htid].iopcode=IDI_Opcode__RdAny ) ) then
        self.ifa[ifa_id].dataE := True;
      elsif ((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdCur | self.tractor[htid].uopcode=UPI_Opcode__RdCode ) ) then
        self.ifa[ifa_id].dataE := False;
      elsif ((self.tractor[htid].protocol = Protocol__UPI) &  (self.tractor[htid].uopcode=UPI_Opcode__RdData | self.tractor[htid].uopcode=UPI_Opcode__RdDataMig | self.tractor[htid].uopcode=UPI_Opcode__RdInvOwn | self.tractor[htid].uopcode=UPI_Opcode__RdInv ) ) then
        self.ifa[ifa_id].dataE := True;
      endif;
      self.tractor[htid].ifa_id := ifa_id;
      packet.opcode:=CXM_Opcode__MemRd;
      packet.address:=self.tractor[htid].address;
      packet.prlrd:=True;
      packet.txnid:=ifa_id;
      mctid := HBo__available_mctentry(self);
    MemTOREntry__load(self.mct[mctid], packet);
      self.count := (self.count + 1);
      self.tractor[htid].prlrd_req_sent := True;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure TOREntry__load(var self: TOREntry; address: Address; opcode: UPI_Opcode);
begin
    self.address := address;
    self.opcode := opcode;
    self.state := RTID_STATE__SentReq;
end;

procedure CA_SnoopEntry__release(var self: CA_SnoopEntry);
begin
    undefine self.opcode;
    undefine self.htid;
    self.state := SRB_STATE__Idle;
    undefine self.fwdtid;
    undefine self.rtid;
    undefine self.crnid;
end;

procedure CA__reset(var self: CA; crnid: UPIAgents);
begin
    for id: RTID do
        TOREntry__release(self.tor[id]);
        self.rtid_usedby_snp[id] := False;
    endfor;
    for id: Snoopq_sz do
        CA_SnoopEntry__release(self.snoopq[id]);
    endfor;
    self.crnid := crnid;
    for address: Address do
        CacheEntry__release(self.cache[address]);
    endfor;
    if (self.crnid = 0) then
      self.forwardFromS := CAFwdFromS;
    else
      self.forwardFromS := False;
    endif;
end;

function CA__is_available_torentry(var self: CA):boolean;
begin
    for id: RTID do
        if (self.tor[id].state = RTID_STATE__Idle) then
          return True;
        endif;
    endfor;
    return False;
end;

function CA__available_torentry(var self: CA):RTID;
begin
    for id: RTID do
        if (self.tor[id].state = RTID_STATE__Idle) then
          return id;
        endif;
    endfor;
end;

function CA__tor_has_matching_wb_or_evict(var self: CA; address: Address):boolean;
begin
    for id: RTID do
        if ((self.tor[id].state != RTID_STATE__Idle) &  (self.tor[id].address = address) &  (self.tor[id].opcode=UPI_Opcode__WbMtoI | self.tor[id].opcode=UPI_Opcode__WbMtoS | self.tor[id].opcode=UPI_Opcode__WbMtoE | self.tor[id].opcode=UPI_Opcode__WbEtoI | self.tor[id].opcode=UPI_Opcode__WbMtoIPtl | self.tor[id].opcode=UPI_Opcode__WbMtoEPtl ) ) then
          return True;
        endif;
    endfor;
    return False;
end;

function CA__tor_has_matching_read_or_inv(var self: CA; address: Address):boolean;
begin
    for id: RTID do
        if ((self.tor[id].state != RTID_STATE__Idle) &  (self.tor[id].address = address) &  (self.tor[id].opcode=UPI_Opcode__RdCode | self.tor[id].opcode=UPI_Opcode__RdData | self.tor[id].opcode=UPI_Opcode__RdDataMig | self.tor[id].opcode=UPI_Opcode__RdInvOwn | self.tor[id].opcode=UPI_Opcode__InvXtoI | self.tor[id].opcode=UPI_Opcode__InvItoE | self.tor[id].opcode=UPI_Opcode__RdInv | self.tor[id].opcode=UPI_Opcode__InvItoM ) ) then
          return True;
        endif;
    endfor;
    return False;
end;

function CA__ca_be_empty(var self: CA; address: Address):boolean;
var
  flag_e: boolean;
begin
    flag_e := True;
    for word: Word do
        if self.cache[address].be[word] then
          flag_e := False;
        endif;
    endfor;
    return flag_e;
end;

function CA__ca_be_full(var self: CA; address: Address):boolean;
var
  flag_f: boolean;
begin
    flag_f := True;
    for word: Word do
        if !(self.cache[address].be[word]) then
          flag_f := False;
        endif;
    endfor;
    return flag_f;
end;

function CA__matching_readinv_id(var self: CA; address: Address):RTID;
begin
    for id: RTID do
        if ((self.tor[id].state != RTID_STATE__Idle) &  (self.tor[id].address = address) &  (self.tor[id].opcode=UPI_Opcode__RdCode | self.tor[id].opcode=UPI_Opcode__RdData | self.tor[id].opcode=UPI_Opcode__RdDataMig | self.tor[id].opcode=UPI_Opcode__RdInvOwn | self.tor[id].opcode=UPI_Opcode__InvXtoI | self.tor[id].opcode=UPI_Opcode__InvItoE | self.tor[id].opcode=UPI_Opcode__RdInv | self.tor[id].opcode=UPI_Opcode__InvItoM ) ) then
          return id;
        endif;
    endfor;
end;

procedure CA__send_new_request(var self: CA; address: Address; opcode: UPI_Opcode; alloc_hint: Boolean);
var
  rtid: RTID;
  packet: UPIPacket;
begin
    Guard((((opcode=UPI_Opcode__RdCode | opcode=UPI_Opcode__RdData | opcode=UPI_Opcode__RdDataMig | opcode=UPI_Opcode__RdInvOwn | opcode=UPI_Opcode__InvXtoI | opcode=UPI_Opcode__InvItoE | opcode=UPI_Opcode__RdInv | opcode=UPI_Opcode__InvItoM | opcode=UPI_Opcode__RdCur ) |  (opcode=UPI_Opcode__ReqFwdCnflt | opcode=UPI_Opcode__WbMtoI | opcode=UPI_Opcode__WbMtoS | opcode=UPI_Opcode__WbMtoE | opcode=UPI_Opcode__WbEtoI | opcode=UPI_Opcode__WbMtoIPtl | opcode=UPI_Opcode__WbMtoEPtl ) ) &  CA__is_available_torentry(self) ));
    if isundefined(guard_failed) then
    Guard((((opcode=UPI_Opcode__RdCode | opcode=UPI_Opcode__RdData | opcode=UPI_Opcode__RdInvOwn | opcode=UPI_Opcode__RdDataMig | opcode=UPI_Opcode__InvItoE | opcode=UPI_Opcode__RdInv | opcode=UPI_Opcode__InvItoM | opcode=UPI_Opcode__RdCur ) &  ((self.cache[address].state=CacheState__I | self.cache[address].state=CacheState__S ) |  (CAAllowBuriedHitM &  (self.cache[address].state=CacheState__E | self.cache[address].state=CacheState__M ) ) ) &  !(CA__tor_has_matching_read_or_inv(self, address)) ) |  ((opcode=UPI_Opcode__InvXtoI ) &  ((self.cache[address].state=CacheState__I | self.cache[address].state=CacheState__S | self.cache[address].state=CacheState__E ) |  (CA__ca_be_empty(self, address) &  (self.cache[address].state=CacheState__M ) ) ) &  !(CA__tor_has_matching_read_or_inv(self, address)) ) |  ((opcode=UPI_Opcode__WbMtoI | opcode=UPI_Opcode__WbMtoS | opcode=UPI_Opcode__WbMtoE ) &  ((self.cache[address].state=CacheState__M ) &  CA__ca_be_full(self, address) ) &  !(CA__tor_has_matching_read_or_inv(self, address)) ) |  ((opcode=UPI_Opcode__WbMtoE ) &  ((self.cache[address].state=CacheState__M ) &  CA__ca_be_full(self, address) ) &  CA__tor_has_matching_read_or_inv(self, address) &  (self.tor[CA__matching_readinv_id(self, address)].state = RTID_STATE__SentReq) ) |  ((opcode=UPI_Opcode__WbEtoI ) &  ((self.cache[address].state=CacheState__E ) &  CA__ca_be_full(self, address) ) &  !(CA__tor_has_matching_read_or_inv(self, address)) ) |  ((opcode=UPI_Opcode__WbMtoIPtl | opcode=UPI_Opcode__WbMtoEPtl ) &  (self.cache[address].state=CacheState__M ) &  !(CA__tor_has_matching_read_or_inv(self, address)) ) |  ((opcode=UPI_Opcode__WbMtoIPtl ) &  (self.cache[address].state=CacheState__M ) &  CA__tor_has_matching_read_or_inv(self, address) &  (self.tor[CA__matching_readinv_id(self, address)].state = RTID_STATE__SentReq) &  (self.snoopq[address].state != SRB_STATE__Idle) ) |  ((opcode=UPI_Opcode__WbMtoEPtl ) &  (self.cache[address].state=CacheState__M ) &  CA__tor_has_matching_read_or_inv(self, address) &  (self.tor[CA__matching_readinv_id(self, address)].state = RTID_STATE__SentReq) ) ));
    if isundefined(guard_failed) then
    Guard(!(CA__tor_has_matching_wb_or_evict(self, address)));
    if isundefined(guard_failed) then
      rtid := CA__available_torentry(self);
    TOREntry__load(self.tor[rtid], address, opcode);
      if (opcode=UPI_Opcode__RdCode | opcode=UPI_Opcode__RdData | opcode=UPI_Opcode__RdDataMig | opcode=UPI_Opcode__RdInvOwn | opcode=UPI_Opcode__RdInv | opcode=UPI_Opcode__InvItoE | opcode=UPI_Opcode__InvItoM | opcode=UPI_Opcode__RdCur ) then
        packet.address:=address;
        packet.opcode:=opcode;
        packet.crnid:=self.crnid;
        packet.rtid:=rtid;
        packet.alloc_hint:=alloc_hint;
      elsif (opcode=UPI_Opcode__InvXtoI ) then
        packet.address:=address;
        packet.opcode:=opcode;
        packet.crnid:=self.crnid;
        packet.rtid:=rtid;
        packet.alloc_hint:=alloc_hint;
        self.cache[address].state := CacheState__I;
        for word: Word do
            self.cache[address].be[word] := False;
        endfor;
      elsif (opcode=UPI_Opcode__WbMtoI ) then
        packet.address:=address;
        packet.opcode:=opcode;
        packet.crnid:=self.crnid;
        packet.rtid:=rtid;
        packet.data:=self.cache[address].data;
        packet.be:=self.cache[address].be;
        packet.alloc_hint:=alloc_hint;
        self.cache[address].state := CacheState__I;
        for word: Word do
            self.cache[address].be[word] := False;
        endfor;
      elsif (opcode=UPI_Opcode__WbMtoS ) then
        packet.address:=address;
        packet.opcode:=opcode;
        packet.crnid:=self.crnid;
        packet.rtid:=rtid;
        packet.data:=self.cache[address].data;
        packet.be:=self.cache[address].be;
        packet.alloc_hint:=alloc_hint;
        self.cache[address].state := CacheState__S;
      elsif (opcode=UPI_Opcode__WbMtoE ) then
        packet.address:=address;
        packet.opcode:=opcode;
        packet.crnid:=self.crnid;
        packet.rtid:=rtid;
        packet.data:=self.cache[address].data;
        packet.be:=self.cache[address].be;
        packet.alloc_hint:=alloc_hint;
        self.cache[address].state := CacheState__E;
        if CA__tor_has_matching_read_or_inv(self, address) then
          if (self.snoopq[address].state != SRB_STATE__Idle) then
            self.tor[CA__matching_readinv_id(self, address)].stale := False;
          elsif (self.snoopq[address].state = SRB_STATE__Idle) then
            self.tor[CA__matching_readinv_id(self, address)].stale := True;
          endif;
        endif;
      elsif (opcode=UPI_Opcode__WbEtoI ) then
        packet.address:=address;
        packet.opcode:=opcode;
        packet.crnid:=self.crnid;
        packet.rtid:=rtid;
        packet.data:=self.cache[address].data;
        packet.be:=self.cache[address].be;
        packet.alloc_hint:=alloc_hint;
        self.cache[address].state := CacheState__I;
      elsif (opcode=UPI_Opcode__WbMtoIPtl ) then
        packet.address:=address;
        packet.opcode:=opcode;
        packet.crnid:=self.crnid;
        packet.rtid:=rtid;
        packet.data:=self.cache[address].data;
        packet.be:=self.cache[address].be;
        packet.alloc_hint:=alloc_hint;
        self.cache[address].state := CacheState__I;
        for word: Word do
            self.cache[address].be[word] := False;
        endfor;
        if CA__tor_has_matching_read_or_inv(self, address) then
          if (self.snoopq[address].state != SRB_STATE__Idle) then
            self.tor[CA__matching_readinv_id(self, address)].stale := False;
          endif;
        endif;
      elsif (opcode=UPI_Opcode__WbMtoEPtl ) then
        packet.address:=address;
        packet.opcode:=opcode;
        packet.crnid:=self.crnid;
        packet.rtid:=rtid;
        packet.data:=self.cache[address].data;
        packet.be:=self.cache[address].be;
        packet.alloc_hint:=alloc_hint;
        self.cache[address].state := CacheState__E;
        for word: Word do
            self.cache[address].be[word] := False;
        endfor;
        if CA__tor_has_matching_read_or_inv(self, address) then
          if (self.snoopq[address].state != SRB_STATE__Idle) then
            self.tor[CA__matching_readinv_id(self, address)].stale := False;
          elsif (self.snoopq[address].state = SRB_STATE__Idle) then
            self.tor[CA__matching_readinv_id(self, address)].stale := True;
          endif;
        endif;
      else
        assert False " Support not added to send req packet for opcode  opcode";
      endif;
      self.to_hbo := packet;
      self.to_hbo__update:=True;
      rbw_port_transfer();
    endif;
    endif;
    endif;
end;

function CA__be_either_full_or_empty(var self: CA; address: Address):boolean;
var
  flag_e: boolean;
  flag_f: boolean;
begin
    flag_e := True;
    flag_f := True;
    for word: Word do
        if self.cache[address].be[word] then
          flag_e := False;
        endif;
    endfor;
    for word: Word do
        if !(self.cache[address].be[word]) then
          flag_f := False;
        endif;
    endfor;
    return (flag_e |  flag_f );
end;

procedure CA__process_snoop_entry(var self: CA; address: Address; resp_opcode: UPI_Opcode);
var
  packet: UPIPacket;
  packet_to_ca: UPIPacket;
begin
    Guard(!(CA__tor_has_matching_wb_or_evict(self, address)));
    if isundefined(guard_failed) then
    Guard((resp_opcode=UPI_Opcode__RspI | resp_opcode=UPI_Opcode__RspIWb | resp_opcode=UPI_Opcode__RspS | resp_opcode=UPI_Opcode__RspSWb | resp_opcode=UPI_Opcode__RspCurData | resp_opcode=UPI_Opcode__RspE | resp_opcode=UPI_Opcode__RspFwdID | resp_opcode=UPI_Opcode__RspFwdIWb | resp_opcode=UPI_Opcode__RspFwdIC | resp_opcode=UPI_Opcode__RspFwdSWb | resp_opcode=UPI_Opcode__RspFwdS ));
    if isundefined(guard_failed) then
    Guard(((!(CA__tor_has_matching_read_or_inv(self, address)) &  (self.snoopq[address].state=SRB_STATE__Ready | self.snoopq[address].state=SRB_STATE__Resolved ) ) |  (CA__tor_has_matching_read_or_inv(self, address) &  self.tor[CA__matching_readinv_id(self, address)].conflict &  (self.tor[CA__matching_readinv_id(self, address)].state=RTID_STATE__SentReq ) &  (self.snoopq[address].state = SRB_STATE__Resolved) ) |  (CA__tor_has_matching_read_or_inv(self, address) &  !(self.tor[CA__matching_readinv_id(self, address)].conflict) &  (self.snoopq[address].state=SRB_STATE__Ready | self.snoopq[address].state=SRB_STATE__Resolved ) ) ));
    if isundefined(guard_failed) then
      if CA__tor_has_matching_read_or_inv(self, address) then
        self.tor[CA__matching_readinv_id(self, address)].stale := False;
      endif;
    Guard((CA__ca_be_empty(self, address) |  CA__ca_be_full(self, address) ));
    if isundefined(guard_failed) then
      if (self.snoopq[address].opcode = UPI_Opcode__SnpLInv) then
        if (self.cache[address].state = CacheState__M) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspIWb) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspIWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
              Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (resp_opcode = UPI_Opcode__RspI) then
          self.cache[address].state := CacheState__I;
          packet.opcode:=UPI_Opcode__RspI;
          packet.htid:=self.snoopq[address].htid;
          packet.responder_id:=self.crnid;
          self.to_hbo := packet;
          self.to_hbo__update:=True;
          rbw_port_transfer();
        else
            Guard(False);
        endif;
      elsif (self.snoopq[address].opcode=UPI_Opcode__SnpLCode | self.snoopq[address].opcode=UPI_Opcode__SnpLData ) then
        if (self.cache[address].state = CacheState__M) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspIWb) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspIWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspSWb) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspSWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__E) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspI) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspI;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__S) then
          if (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          elsif (resp_opcode = UPI_Opcode__RspS) then
            packet.opcode:=UPI_Opcode__RspS;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (resp_opcode = UPI_Opcode__RspI) then
          packet.opcode:=UPI_Opcode__RspI;
          packet.htid:=self.snoopq[address].htid;
          packet.responder_id:=self.crnid;
          self.to_hbo := packet;
          self.to_hbo__update:=True;
          rbw_port_transfer();
        else
            Guard(False);
        endif;
      elsif (self.snoopq[address].opcode=UPI_Opcode__SnpLCurr ) then
        if (self.cache[address].state = CacheState__M) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspCurData) then
              packet.opcode:=UPI_Opcode__RspCurData;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspIWb) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspIWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__E) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspCurData) then
              packet.opcode:=UPI_Opcode__RspCurData;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspE) then
              packet.opcode:=UPI_Opcode__RspE;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspI) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspI;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__S) then
          if (resp_opcode = UPI_Opcode__RspS) then
            packet.opcode:=UPI_Opcode__RspS;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (resp_opcode = UPI_Opcode__RspI) then
          packet.opcode:=UPI_Opcode__RspI;
          packet.htid:=self.snoopq[address].htid;
          packet.responder_id:=self.crnid;
          self.to_hbo := packet;
          self.to_hbo__update:=True;
          rbw_port_transfer();
        else
            Guard(False);
        endif;
      elsif (self.snoopq[address].opcode = UPI_Opcode__SnpInvOwn) then
        if (self.cache[address].state = CacheState__M) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspFwdID) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspFwdID;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_M;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspFwdIWb) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspFwdIWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_E;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspIWb) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspIWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
            self.cache[address].state := CacheState__I;
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__E) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspFwdIC) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspFwdIC;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_E;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspI) then
              packet.opcode:=UPI_Opcode__RspI;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.cache[address].state := CacheState__I;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
            self.cache[address].state := CacheState__I;
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state=CacheState__S | self.cache[address].state=CacheState__I ) then
          if (resp_opcode = UPI_Opcode__RspI) then
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
            self.cache[address].state := CacheState__I;
          else
              Guard(False);
          endif;
        endif;
      elsif (self.snoopq[address].opcode=UPI_Opcode__SnpCode ) then
        if (self.cache[address].state = CacheState__M) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspFwdSWb) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspFwdSWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspFwdIWb) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspFwdIWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspSWb) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspSWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspIWb) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspIWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
            self.cache[address].state := CacheState__I;
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__E) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspFwdS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspFwdS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspFwdIC) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspFwdIC;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspI) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspI;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__S) then
          if self.forwardFromS then
            if (resp_opcode = UPI_Opcode__RspFwdS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspFwdS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspI) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspI;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspS) then
            self.cache[address].state := CacheState__S;
            packet.opcode:=UPI_Opcode__RspS;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__I) then
          if (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        endif;
      elsif (self.snoopq[address].opcode=UPI_Opcode__SnpData ) then
        if (self.cache[address].state = CacheState__M) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspFwdSWb) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspFwdSWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspFwdIWb) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspFwdIWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_E;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspSWb) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspSWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspIWb) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspIWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
            self.cache[address].state := CacheState__I;
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__E) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspFwdS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspFwdS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspFwdIC) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspFwdIC;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_E;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspI) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspI;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__S) then
          if self.forwardFromS then
            if (resp_opcode = UPI_Opcode__RspFwdS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspFwdS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspI) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspI;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspS) then
            self.cache[address].state := CacheState__S;
            packet.opcode:=UPI_Opcode__RspS;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__I) then
          if (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        endif;
      elsif (self.snoopq[address].opcode=UPI_Opcode__SnpDataMig ) then
        if (self.cache[address].state = CacheState__M) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspFwdSWb) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspFwdSWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspFwdIWb) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspFwdIWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_E;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspFwdID) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspFwdID;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_M;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspSWb) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspSWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspIWb) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspIWb;
              packet.htid:=self.snoopq[address].htid;
              packet.data:=self.cache[address].data;
              packet.be:=self.cache[address].be;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
            self.cache[address].state := CacheState__I;
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__E) then
          if CA__ca_be_full(self, address) then
            if (resp_opcode = UPI_Opcode__RspFwdS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspFwdS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspFwdIC) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspFwdIC;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspI) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspI;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__S) then
          if self.forwardFromS then
            if (resp_opcode = UPI_Opcode__RspFwdS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspFwdS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              packet_to_ca.opcode:=UPI_Opcode__Data_SI;
              packet_to_ca.rtid:=self.snoopq[address].rtid;
              packet_to_ca.be:=self.cache[address].be;
              packet_to_ca.data:=self.cache[address].data;
              self.to_ca[self.snoopq[address].crnid] := packet_to_ca;
              self.to_ca__update[self.snoopq[address].crnid]:=True;
              rbw_port_transfer();
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspS) then
              self.cache[address].state := CacheState__S;
              packet.opcode:=UPI_Opcode__RspS;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            elsif (resp_opcode = UPI_Opcode__RspI) then
              self.cache[address].state := CacheState__I;
              packet.opcode:=UPI_Opcode__RspI;
              packet.htid:=self.snoopq[address].htid;
              packet.responder_id:=self.crnid;
              self.to_hbo := packet;
              self.to_hbo__update:=True;
              rbw_port_transfer();
            else
                Guard(False);
            endif;
          elsif (resp_opcode = UPI_Opcode__RspS) then
            self.cache[address].state := CacheState__S;
            packet.opcode:=UPI_Opcode__RspS;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          elsif (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        elsif (self.cache[address].state = CacheState__I) then
          if (resp_opcode = UPI_Opcode__RspI) then
            self.cache[address].state := CacheState__I;
            packet.opcode:=UPI_Opcode__RspI;
            packet.htid:=self.snoopq[address].htid;
            packet.responder_id:=self.crnid;
            self.to_hbo := packet;
            self.to_hbo__update:=True;
            rbw_port_transfer();
          else
              Guard(False);
          endif;
        endif;
      else
        assert False " snoop process not added for  self.snoopq[address].opcode";
      endif;
    CA_SnoopEntry__release(self.snoopq[address]);
    endif;
    endif;
    endif;
    endif;
end;

function CA__is_available_rtid_for_snp(var self: CA):boolean;
begin
    for id: RTID do
        if !(self.rtid_usedby_snp[id]) then
          return True;
        endif;
    endfor;
    return False;
end;

function CA__available_rtid(var self: CA):RTID;
begin
    for id: RTID do
        if !(self.rtid_usedby_snp[id]) then
          return id;
        endif;
    endfor;
end;

procedure CA__request_fwd_conflict(var self: CA; address: Address);
var
  rtid: RTID;
  packet: UPIPacket;
begin
    Guard(CA__is_available_rtid_for_snp(self));
    if isundefined(guard_failed) then
    Guard((self.snoopq[address].state = SRB_STATE__Ready));
    if isundefined(guard_failed) then
    Guard(CA__tor_has_matching_read_or_inv(self, address));
    if isundefined(guard_failed) then
      rtid := CA__available_rtid(self);
      self.rtid_usedby_snp[rtid] := True;
      self.snoopq[address].state := SRB_STATE__ReqSent;
      self.snoopq[address].fwdtid := rtid;
      packet.opcode:=UPI_Opcode__ReqFwdCnflt;
      packet.rtid:=rtid;
      packet.crnid:=self.crnid;
      packet.address:=address;
      self.to_hbo := packet;
      self.to_hbo__update:=True;
      rbw_port_transfer();
    endif;
    endif;
    endif;
end;

function CA__no_active_req(var self: CA; address: Address):boolean;
begin
    for id: RTID do
        if ((self.tor[id].state != RTID_STATE__Idle) &  (self.tor[id].address = address) ) then
          return False;
        endif;
    endfor;
    if (self.snoopq[address].state != SRB_STATE__Idle) then
      return False;
    endif;
    return True;
end;

procedure CA__ca_modify_cacheline(var self: CA; address: Address; word: Word; data: Data);
begin
    Guard((self.cache[address].state=CacheState__E | self.cache[address].state=CacheState__M ));
    if isundefined(guard_failed) then
    Guard((!(self.cache[address].be[word]) |  (self.cache[address].data[word] != data) ));
    if isundefined(guard_failed) then
      self.cache[address].state := CacheState__M;
      self.cache[address].data[word] := data;
      self.cache[address].be[word] := True;
    endif;
    endif;
end;

procedure CA__ca_downgrade_cacheline(var self: CA; address: Address; cacheOp: CacheOp);
begin
    Guard((((cacheOp = CacheOp__ToI) &  (self.cache[address].state=CacheState__E | self.cache[address].state=CacheState__S ) ) |  ((cacheOp = CacheOp__ToI) &  (self.cache[address].state=CacheState__M ) &  CA__ca_be_empty(self, address) ) |  ((cacheOp = CacheOp__ToS) &  (self.cache[address].state=CacheState__E ) &  CA__ca_be_full(self, address) ) |  ((cacheOp = CacheOp__ToEmptyE) &  (self.cache[address].state=CacheState__E ) &  CA__ca_be_full(self, address) ) |  ((cacheOp = CacheOp__ToEmptyE) &  (self.cache[address].state=CacheState__M ) &  CA__ca_be_empty(self, address) ) ));
    if isundefined(guard_failed) then
      if (cacheOp = CacheOp__ToI) then
        if (self.cache[address].state=CacheState__E | self.cache[address].state=CacheState__S ) then
          self.cache[address].state := CacheState__I;
          for word: Word do
              self.cache[address].be[word] := False;
          endfor;
        elsif ((self.cache[address].state=CacheState__M ) &  CA__ca_be_empty(self, address) ) then
          self.cache[address].state := CacheState__I;
        endif;
      elsif (cacheOp = CacheOp__ToS) then
        if ((self.cache[address].state=CacheState__E ) &  CA__ca_be_full(self, address) ) then
          self.cache[address].state := CacheState__S;
        endif;
      elsif (cacheOp = CacheOp__ToEmptyE) then
        if ((self.cache[address].state=CacheState__E ) &  CA__ca_be_full(self, address) ) then
          self.cache[address].state := CacheState__E;
          for word: Word do
              self.cache[address].be[word] := False;
          endfor;
        elsif ((self.cache[address].state=CacheState__M ) &  CA__ca_be_empty(self, address) ) then
          self.cache[address].state := CacheState__E;
        endif;
      else
        assert False "Guard needs to be updated";
      endif;
    endif;
end;

procedure UChannel__1__reset(var self: UChannel__1);
begin
    self.count := 0;
    undefine self.pkts;
end;

function UChannel__1__pop(var self: UChannel__1; index: Index__1):UPIPacket;
var
  pkt: UPIPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure UChannel__1__left_shift(var self: UChannel__1; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure UChannel__2__reset(var self: UChannel__2);
begin
    self.count := 0;
    undefine self.pkts;
end;

function UChannel__2__pop(var self: UChannel__2; index: Index__1):UPIPacket;
var
  pkt: UPIPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure UChannel__2__left_shift(var self: UChannel__2; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure UChannel__3__reset(var self: UChannel__3);
begin
    self.count := 0;
    undefine self.pkts;
end;

function UChannel__3__pop(var self: UChannel__3; index: Index__1):UPIPacket;
var
  pkt: UPIPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure UChannel__3__left_shift(var self: UChannel__3; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure UChannel__4__reset(var self: UChannel__4);
begin
    self.count := 0;
    undefine self.pkts;
end;

function UChannel__4__pop(var self: UChannel__4; index: Index__1):UPIPacket;
var
  pkt: UPIPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure UChannel__4__left_shift(var self: UChannel__4; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure UChannel__5__reset(var self: UChannel__5);
begin
    self.count := 0;
    undefine self.pkts;
end;

function UChannel__5__pop(var self: UChannel__5; index: Index__1):UPIPacket;
var
  pkt: UPIPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure UChannel__5__left_shift(var self: UChannel__5; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure CChannel__5__reset(var self: CChannel__5);
begin
    self.count := 0;
    undefine self.pkts;
end;

function CChannel__5__pop(var self: CChannel__5; index: Index__1):CXMPacket;
var
  pkt: CXMPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure CChannel__5__left_shift(var self: CChannel__5; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure ULink__reset(var self: ULink);
begin
    UChannel__1__reset(self.CAReq);
    UChannel__2__reset(self.CAWb);
    UChannel__4__reset(self.CAResp);
    UChannel__3__reset(self.HASnp);
    UChannel__5__reset(self.HAResp);
    CChannel__5__reset(self.MCResp);
end;

procedure ULink__send_CAReq_packet(var self: ULink; index: CHANNEL_SIZE);
var
  packet: UPIPacket;
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.CAReq.count));
    if isundefined(guard_failed) then
      packet := UChannel__1__pop(self.CAReq, index);
      self.to_ha := packet;
      self.to_ha__update:=True;
      rbw_port_transfer();
    UChannel__1__left_shift(self.CAReq, index);
    endif;
    endif;
end;

procedure ULink__send_CAWb_packet(var self: ULink; index: CHANNEL_SIZE);
var
  packet: UPIPacket;
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.CAWb.count));
    if isundefined(guard_failed) then
      packet := UChannel__2__pop(self.CAWb, index);
      self.to_ha := packet;
      self.to_ha__update:=True;
      rbw_port_transfer();
    UChannel__2__left_shift(self.CAWb, index);
    endif;
    endif;
end;

procedure ULink__send_CAResp_packet(var self: ULink; index: CHANNEL_SIZE);
var
  packet: UPIPacket;
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.CAResp.count));
    if isundefined(guard_failed) then
      packet := UChannel__4__pop(self.CAResp, index);
      self.to_ha := packet;
      self.to_ha__update:=True;
      rbw_port_transfer();
    UChannel__4__left_shift(self.CAResp, index);
    endif;
    endif;
end;

function ULink__no_pending_Cmpl(var self: ULink; index: CHANNEL_SIZE):boolean;
var
  flag: boolean;
begin
    flag := True;
    for id: Index__1 do
        if (id != index) then
          if ((id < self.HAResp.count) &  (self.HAResp.pkts[id].opcode=UPI_Opcode__SI_CmpO | self.HAResp.pkts[id].opcode=UPI_Opcode__E_CmpO | self.HAResp.pkts[id].opcode=UPI_Opcode__M_CmpO ) ) then
            flag := False;
          endif;
        endif;
    endfor;
    return ((self.HAResp.count = 0) |  flag );
end;

procedure ULink__send_HAResp_packet(var self: ULink; index: CHANNEL_SIZE);
var
  packet: UPIPacket;
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.HAResp.count));
    if isundefined(guard_failed) then
    Guard((!((self.HAResp.pkts[index].opcode = UPI_Opcode__FwdCnfltO)) |  ULink__no_pending_Cmpl(self, index) ));
    if isundefined(guard_failed) then
      packet := UChannel__5__pop(self.HAResp, index);
      self.to_ca := packet;
      self.to_ca__update:=True;
      rbw_port_transfer();
    UChannel__5__left_shift(self.HAResp, index);
    endif;
    endif;
    endif;
end;

procedure ULink__send_MCResp_packet(var self: ULink; index: CHANNEL_SIZE);
var
  packet: CXMPacket;
  idiPacket: IDIPacket;
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.MCResp.count));
    if isundefined(guard_failed) then
      packet := CChannel__5__pop(self.MCResp, index);
      idiPacket.opcode:=IDI_Opcode__Data;
      idiPacket.rtid:=packet.rtid;
      idiPacket.data:=packet.data;
      self.to_core := idiPacket;
      self.to_core__update:=True;
      rbw_port_transfer();
    CChannel__5__left_shift(self.MCResp, index);
    endif;
    endif;
end;

procedure ULink__send_HASnp_packet(var self: ULink; index: CHANNEL_SIZE);
var
  packet: UPIPacket;
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.HASnp.count));
    if isundefined(guard_failed) then
      packet := UChannel__3__pop(self.HASnp, index);
      self.to_ca := packet;
      self.to_ca__update:=True;
      rbw_port_transfer();
    UChannel__3__left_shift(self.HASnp, index);
    endif;
    endif;
end;

procedure CQEntry__release(var self: CQEntry);
begin
    self.valid := False;
    undefine self.opcode;
    self.resp_recvd := False;
    undefine self.respstate;
    undefine self.address;
    self.data_recvd := False;
    self.selfsnp := False;
    self.data_sent := False;
    undefine self.htid;
    self.extcmp_recvd := False;
    undefine self.resp_opcode;
    self.bogus := False;
    undefine self.data;
    self.stale := False;
end;

procedure CQEntry__load(var self: CQEntry; opcode: IDI_Opcode; address: Address; selfsnp: Boolean);
begin
    self.valid := True;
    self.opcode := opcode;
    self.address := address;
    self.selfsnp := selfsnp;
end;

procedure SnoopEntry__release(var self: SnoopEntry);
begin
    self.valid := False;
    undefine self.opcode;
    undefine self.address;
    undefine self.htid;
    self.data_sent := False;
    self.resp_sent := False;
    undefine self.resp_opcode;
    self.resp_computed := False;
end;

procedure IDIAgent__reset(var self: IDIAgent);
begin
    for id: RTID do
        CQEntry__release(self.cq[id]);
    endfor;
    for addr: Address do
        CacheEntry__release(self.cache[addr]);
        self.address_monitored[addr] := False;
    endfor;
    for id: Snoopq_sz do
        SnoopEntry__release(self.snoopq[id]);
    endfor;
end;

function IDIAgent__is_available_cqentry(var self: IDIAgent):boolean;
begin
    for id: RTID do
        if !(self.cq[id].valid) then
          return True;
        endif;
    endfor;
    return False;
end;

function IDIAgent__available_cqentry(var self: IDIAgent):RTID;
var
  ret_id: RTID;
begin
    for id: RTID do
        if !(self.cq[id].valid) then
          ret_id := id;
        endif;
    endfor;
    return ret_id;
end;

function IDIAgent__all_caches_are_flushed(var self: IDIAgent):boolean;
var
  flag: boolean;
begin
    flag := True;
    for address: Address do
        if (!(self.cache[address].state=CacheState__I) ) then
          flag := False;
          return flag;
        endif;
    endfor;
    return flag;
end;

function IDIAgent__no_outstanding_ordering_request(var self: IDIAgent; address: Address):boolean;
var
  flag: boolean;
begin
    flag := True;
    for rtid: RTID do
        if (self.cq[rtid].valid &  (self.cq[rtid].opcode=IDI_Opcode__RdAny | self.cq[rtid].opcode=IDI_Opcode__RdOwn | self.cq[rtid].opcode=IDI_Opcode__RdShared | self.cq[rtid].opcode=IDI_Opcode__RdOwnNoData | self.cq[rtid].opcode=IDI_Opcode__ItoMWr | self.cq[rtid].opcode=IDI_Opcode__CLFlush | self.cq[rtid].opcode=IDI_Opcode__CleanEvict | self.cq[rtid].opcode=IDI_Opcode__CleanEvictNoInvalidate | self.cq[rtid].opcode=IDI_Opcode__DirtyEvict | self.cq[rtid].opcode=IDI_Opcode__DirtyEvictNoInv | self.cq[rtid].opcode=IDI_Opcode__CleanEvictNoData | self.cq[rtid].opcode=IDI_Opcode__CLFlush_OPT | self.cq[rtid].opcode=IDI_Opcode__WOWrInv | self.cq[rtid].opcode=IDI_Opcode__WOWrInvF | self.cq[rtid].opcode=IDI_Opcode__WrInv | self.cq[rtid].opcode=IDI_Opcode__CLWB | self.cq[rtid].opcode=IDI_Opcode__MemWr ) &  (self.cq[rtid].address = address) &  !(self.cq[rtid].resp_recvd) ) then
          flag := False;
        endif;
    endfor;
    return flag;
end;

function IDIAgent__agent_be_full(var self: IDIAgent; address: Address):boolean;
var
  flag_f: boolean;
begin
    flag_f := True;
    for word: Word do
        if !(self.cache[address].be[word]) then
          flag_f := False;
        endif;
    endfor;
    return flag_f;
end;

procedure IDIAgent__new_request(var self: IDIAgent; opcode: IDI_Opcode; address: Address; selfsnp: Boolean; alloc_hint: Boolean);
var
  rtid: RTID;
  pkt: IDIPacket;
begin
    Guard(((opcode=IDI_Opcode__RdAny | opcode=IDI_Opcode__RdCurr | opcode=IDI_Opcode__RdOwn | opcode=IDI_Opcode__RdShared | opcode=IDI_Opcode__RdOwnNoData | opcode=IDI_Opcode__ItoMWr | opcode=IDI_Opcode__CLFlush | opcode=IDI_Opcode__CleanEvict | opcode=IDI_Opcode__CleanEvictNoInvalidate | opcode=IDI_Opcode__DirtyEvict | opcode=IDI_Opcode__DirtyEvictNoInv | opcode=IDI_Opcode__CleanEvictNoData | opcode=IDI_Opcode__CLFlush_OPT | opcode=IDI_Opcode__WOWrInv | opcode=IDI_Opcode__WOWrInvF | opcode=IDI_Opcode__WrInv | opcode=IDI_Opcode__CLWB | opcode=IDI_Opcode__MemWr | opcode=IDI_Opcode__UcRdF | opcode=IDI_Opcode__PrefetchtoSysCache | opcode=IDI_Opcode__SetMonitor | opcode=IDI_Opcode__ClrMonitor | opcode=IDI_Opcode__RdCurr_ns ) &  IDIAgent__is_available_cqentry(self) ));
    if isundefined(guard_failed) then
    Guard((!((opcode=IDI_Opcode__CleanEvict | opcode=IDI_Opcode__CleanEvictNoInvalidate )) |  ((self.cache[address].state=CacheState__E | self.cache[address].state=CacheState__S ) &  IDIAgent__agent_be_full(self, address) ) ));
    if isundefined(guard_failed) then
    Guard((!((opcode=IDI_Opcode__DirtyEvict | opcode=IDI_Opcode__DirtyEvictNoInv )) |  ((self.cache[address].state=CacheState__M ) &  IDIAgent__agent_be_full(self, address) ) ));
    if isundefined(guard_failed) then
    Guard((!((opcode=IDI_Opcode__CleanEvictNoData )) |  (self.cache[address].state=CacheState__S | self.cache[address].state=CacheState__E ) ));
    if isundefined(guard_failed) then
    Guard((!((opcode=IDI_Opcode__SetMonitor )) |  !(self.address_monitored[address]) ));
    if isundefined(guard_failed) then
    Guard((!(((opcode=IDI_Opcode__CLFlush ) &  (self.cache[address].state = CacheState__M) )) |  selfsnp ));
    if isundefined(guard_failed) then
    Guard((!((opcode=IDI_Opcode__PrefetchtoSysCache )) |  alloc_hint ));
    if isundefined(guard_failed) then
      rtid := IDIAgent__available_cqentry(self);
    CQEntry__load(self.cq[rtid], opcode, address, selfsnp);
      pkt.rtid:=rtid;
      pkt.opcode:=opcode;
      pkt.address:=address;
      pkt.selfsnp:=selfsnp;
      pkt.alloc_hint:=alloc_hint;
      self.to_hbo := pkt;
      self.to_hbo__update:=True;
      rbw_port_transfer();
      if (opcode = IDI_Opcode__SetMonitor) then
        self.address_monitored[address] := True;
      endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

function IDIAgent__agent_be_empty(var self: IDIAgent; address: Address):boolean;
var
  flag_f: boolean;
begin
    flag_f := True;
    for word: Word do
        if self.cache[address].be[word] then
          flag_f := False;
        endif;
    endfor;
    return flag_f;
end;

procedure IDIAgent__compute_snoop_response(var self: IDIAgent; idx: Snoopq_sz; bias: range__3);
begin
    Guard((self.snoopq[idx].valid &  !(self.snoopq[idx].resp_sent) &  !(self.snoopq[idx].resp_computed) ));
    if isundefined(guard_failed) then
    Guard((IDIAgent__agent_be_full(self, self.snoopq[idx].address) |  IDIAgent__agent_be_empty(self, self.snoopq[idx].address) ));
    if isundefined(guard_failed) then
      if (self.snoopq[idx].opcode=IDI_Opcode__SnpCode | self.snoopq[idx].opcode=IDI_Opcode__SnpData ) then
        if (self.cache[self.snoopq[idx].address].state = CacheState__I) then
          self.snoopq[idx].resp_opcode := IDI_Opcode__RspIHitI;
        elsif (self.cache[self.snoopq[idx].address].state=CacheState__S | self.cache[self.snoopq[idx].address].state=CacheState__E ) then
          self.snoopq[idx].resp_opcode := IDI_Opcode__RspSHitSE;
        elsif (bias = 0) then
          self.snoopq[idx].resp_opcode := IDI_Opcode__RspIFwdM;
        else
          self.snoopq[idx].resp_opcode := IDI_Opcode__RspSFwdM;
        endif;
      elsif (self.snoopq[idx].opcode=IDI_Opcode__SnpInv | self.snoopq[idx].opcode=IDI_Opcode__BackInv ) then
        if (self.cache[self.snoopq[idx].address].state = CacheState__I) then
          self.snoopq[idx].resp_opcode := IDI_Opcode__RspIHitI;
        elsif (self.cache[self.snoopq[idx].address].state=CacheState__S | self.cache[self.snoopq[idx].address].state=CacheState__E ) then
          self.snoopq[idx].resp_opcode := IDI_Opcode__RspIHitSE;
        else
          self.snoopq[idx].resp_opcode := IDI_Opcode__RspIFwdM;
        endif;
      elsif (self.snoopq[idx].opcode = IDI_Opcode__SnpCur) then
        if (self.cache[self.snoopq[idx].address].state = CacheState__I) then
          self.snoopq[idx].resp_opcode := IDI_Opcode__RspIHitI;
        elsif (self.cache[self.snoopq[idx].address].state=CacheState__S | self.cache[self.snoopq[idx].address].state=CacheState__E ) then
          if (bias = 0) then
            self.snoopq[idx].resp_opcode := IDI_Opcode__RspIHitSE;
          elsif (bias = 1) then
            self.snoopq[idx].resp_opcode := IDI_Opcode__RspSHitSE;
          else
            self.snoopq[idx].resp_opcode := IDI_Opcode__RspVHitV;
          endif;
        elsif (bias = 0) then
          self.snoopq[idx].resp_opcode := IDI_Opcode__RspIFwdM;
        elsif (bias = 1) then
          self.snoopq[idx].resp_opcode := IDI_Opcode__RspSFwdM;
        else
          self.snoopq[idx].resp_opcode := IDI_Opcode__RspVFwdV;
        endif;
      else
        assert False " snoop response not defined for opcode  self.snoopq[idx].opcode";
      endif;
      self.snoopq[idx].resp_computed := True;
    endif;
    endif;
end;

procedure IDIAgent__update_cq(var self: IDIAgent; address: Address; cs: CacheState);
begin
    for rtid: RTID do
        if (self.cq[rtid].valid &  (self.cq[rtid].address = address) &  self.cq[rtid].resp_recvd &  (cs = CacheState__I) ) then
          self.cq[rtid].stale := True;
        endif;
    endfor;
end;

procedure IDIAgent__send_snoop_response(var self: IDIAgent; idx: Snoopq_sz);
var
  packet: IDIPacket;
begin
    Guard((self.snoopq[idx].valid &  !(self.snoopq[idx].resp_sent) &  self.snoopq[idx].resp_computed ));
    if isundefined(guard_failed) then
      if (self.snoopq[idx].resp_opcode=IDI_Opcode__RspSHitSE | self.snoopq[idx].resp_opcode=IDI_Opcode__RspSFwdM ) then
        self.cache[self.snoopq[idx].address].state := CacheState__S;
      elsif (self.snoopq[idx].resp_opcode=IDI_Opcode__RspIHitSE | self.snoopq[idx].resp_opcode=IDI_Opcode__RspIFwdM ) then
        self.cache[self.snoopq[idx].address].state := CacheState__I;
        if (self.snoopq[idx].resp_opcode=IDI_Opcode__RspIHitSE ) then
          for rtid: RTID do
              if (self.cq[rtid].valid &  (self.cq[rtid].address = self.snoopq[idx].address) &  self.cq[rtid].resp_recvd ) then
                self.cq[rtid].stale := True;
              endif;
          endfor;
        endif;
      endif;
      self.snoopq[idx].resp_sent := True;
      packet.opcode:=self.snoopq[idx].resp_opcode;
      packet.htid:=self.snoopq[idx].htid;
      self.to_hbo := packet;
      self.to_hbo__update:=True;
      rbw_port_transfer();
      if (self.snoopq[idx].resp_opcode=IDI_Opcode__RspIFwdM | self.snoopq[idx].resp_opcode=IDI_Opcode__RspIHitSE ) then
        for cqid: RTID do
            if (self.cq[cqid].valid &  (self.cq[cqid].opcode=IDI_Opcode__CleanEvict | self.cq[cqid].opcode=IDI_Opcode__CleanEvictNoInvalidate | self.cq[cqid].opcode=IDI_Opcode__DirtyEvict | self.cq[cqid].opcode=IDI_Opcode__DirtyEvictNoInv ) &  (self.cq[cqid].data_sent = False) &  (self.cq[cqid].address = self.snoopq[idx].address) ) then
              self.cq[cqid].bogus := True;
            endif;
        endfor;
      endif;
      if (self.snoopq[idx].resp_opcode=IDI_Opcode__RspIHitSE ) then
        CacheEntry__release(self.cache[self.snoopq[idx].address]);
      endif;
      if (self.snoopq[idx].resp_opcode=IDI_Opcode__RspSHitSE | self.snoopq[idx].resp_opcode=IDI_Opcode__RspIHitSE | self.snoopq[idx].resp_opcode=IDI_Opcode__RspIHitI | self.snoopq[idx].resp_opcode=IDI_Opcode__RspVHitV ) then
        SnoopEntry__release(self.snoopq[idx]);
      elsif (self.snoopq[idx].resp_opcode=IDI_Opcode__RspIFwdM | self.snoopq[idx].resp_opcode=IDI_Opcode__RspSFwdM | self.snoopq[idx].resp_opcode=IDI_Opcode__RspVFwdV ) then
        if self.snoopq[idx].data_sent then
          if (self.snoopq[idx].resp_opcode=IDI_Opcode__RspIFwdM ) then
            CacheEntry__release(self.cache[self.snoopq[idx].address]);
          endif;
          SnoopEntry__release(self.snoopq[idx]);
        endif;
      endif;
    endif;
end;

function IDIAgent__data_recvd_for_cq_req(var self: IDIAgent; address: Address):boolean;
var
  flag: boolean;
begin
    flag := True;
    for cqid: RTID do
        if (self.cq[cqid].valid &  (self.cq[cqid].address = address) &  (self.cq[cqid].opcode=IDI_Opcode__RdAny | self.cq[cqid].opcode=IDI_Opcode__RdShared | self.cq[cqid].opcode=IDI_Opcode__RdOwn ) &  self.cq[cqid].resp_recvd &  !(self.cq[cqid].data_recvd) ) then
          flag := False;
        endif;
    endfor;
    return flag;
end;

procedure IDIAgent__send_snoop_data(var self: IDIAgent; idx: Snoopq_sz);
var
  packet: IDIPacket;
begin
    Guard((self.snoopq[idx].valid &  !(self.snoopq[idx].data_sent) &  self.snoopq[idx].resp_computed ));
    if isundefined(guard_failed) then
    Guard((self.snoopq[idx].resp_opcode=IDI_Opcode__RspIFwdM | self.snoopq[idx].resp_opcode=IDI_Opcode__RspSFwdM | self.snoopq[idx].resp_opcode=IDI_Opcode__RspVFwdV ));
    if isundefined(guard_failed) then
    Guard(IDIAgent__agent_be_full(self, self.snoopq[idx].address));
    if isundefined(guard_failed) then
      self.snoopq[idx].data_sent := True;
      packet.opcode:=IDI_Opcode__Data;
      packet.htid:=self.snoopq[idx].htid;
      packet.data:=self.cache[self.snoopq[idx].address].data;
      packet.be:=self.cache[self.snoopq[idx].address].be;
      self.to_hbo := packet;
      self.to_hbo__update:=True;
      rbw_port_transfer();
      if self.snoopq[idx].resp_sent then
        if (self.snoopq[idx].resp_opcode=IDI_Opcode__RspIFwdM ) then
          CacheEntry__release(self.cache[self.snoopq[idx].address]);
        elsif (self.cache[self.snoopq[idx].address].state = CacheState__I) then
          CacheEntry__release(self.cache[self.snoopq[idx].address]);
        endif;
        SnoopEntry__release(self.snoopq[idx]);
      endif;
    endif;
    endif;
    endif;
end;

procedure IDIAgent__release_cq_entry(var self: IDIAgent; rtid: RTID);
begin
    Guard((self.cq[rtid].valid &  (self.cq[rtid].opcode=IDI_Opcode__RdAny | self.cq[rtid].opcode=IDI_Opcode__RdShared | self.cq[rtid].opcode=IDI_Opcode__RdOwn | self.cq[rtid].opcode=IDI_Opcode__RdOwnNoData | self.cq[rtid].opcode=IDI_Opcode__RdCurr | self.cq[rtid].opcode=IDI_Opcode__ItoMWr | self.cq[rtid].opcode=IDI_Opcode__CLFlush | self.cq[rtid].opcode=IDI_Opcode__CLFlush_OPT | self.cq[rtid].opcode=IDI_Opcode__CleanEvict | self.cq[rtid].opcode=IDI_Opcode__CleanEvictNoInvalidate | self.cq[rtid].opcode=IDI_Opcode__DirtyEvict | self.cq[rtid].opcode=IDI_Opcode__DirtyEvictNoInv | self.cq[rtid].opcode=IDI_Opcode__CleanEvictNoData | self.cq[rtid].opcode=IDI_Opcode__WOWrInv | self.cq[rtid].opcode=IDI_Opcode__WOWrInvF | self.cq[rtid].opcode=IDI_Opcode__WrInv | self.cq[rtid].opcode=IDI_Opcode__CLWB | self.cq[rtid].opcode=IDI_Opcode__MemWr | self.cq[rtid].opcode=IDI_Opcode__UcRdF | self.cq[rtid].opcode=IDI_Opcode__SetMonitor | self.cq[rtid].opcode=IDI_Opcode__PrefetchtoSysCache | self.cq[rtid].opcode=IDI_Opcode__RdCurr_ns | self.cq[rtid].opcode=IDI_Opcode__ClrMonitor ) ));
    if isundefined(guard_failed) then
    Guard(((!(self.cq[rtid].opcode=IDI_Opcode__RdCurr) & !(self.cq[rtid].opcode=IDI_Opcode__RdCurr_ns) ) |  self.cq[rtid].data_recvd ));
    if isundefined(guard_failed) then
    Guard(((!(self.cq[rtid].opcode=IDI_Opcode__RdAny) & !(self.cq[rtid].opcode=IDI_Opcode__RdOwn) & !(self.cq[rtid].opcode=IDI_Opcode__RdShared) & !(self.cq[rtid].opcode=IDI_Opcode__UcRdF) & !(self.cq[rtid].opcode=IDI_Opcode__SetMonitor) ) |  (self.cq[rtid].data_recvd &  self.cq[rtid].resp_recvd ) ));
    if isundefined(guard_failed) then
    Guard(((!(self.cq[rtid].opcode=IDI_Opcode__RdOwnNoData) & !(self.cq[rtid].opcode=IDI_Opcode__CLFlush) & !(self.cq[rtid].opcode=IDI_Opcode__CleanEvictNoData) & !(self.cq[rtid].opcode=IDI_Opcode__PrefetchtoSysCache) & !(self.cq[rtid].opcode=IDI_Opcode__ClrMonitor) ) |  self.cq[rtid].resp_recvd ));
    if isundefined(guard_failed) then
    Guard(((!(self.cq[rtid].opcode=IDI_Opcode__ItoMWr) & !(self.cq[rtid].opcode=IDI_Opcode__MemWr) ) |  self.cq[rtid].data_sent ));
    if isundefined(guard_failed) then
    Guard(((!(self.cq[rtid].opcode=IDI_Opcode__CLFlush_OPT) & !(self.cq[rtid].opcode=IDI_Opcode__WOWrInv) & !(self.cq[rtid].opcode=IDI_Opcode__WOWrInvF) & !(self.cq[rtid].opcode=IDI_Opcode__WrInv) & !(self.cq[rtid].opcode=IDI_Opcode__CLWB) ) |  (self.cq[rtid].extcmp_recvd &  self.cq[rtid].resp_recvd ) ));
    if isundefined(guard_failed) then
    Guard(((!(self.cq[rtid].opcode=IDI_Opcode__CleanEvict) & !(self.cq[rtid].opcode=IDI_Opcode__CleanEvictNoInvalidate) ) |  (self.cq[rtid].resp_recvd &  self.cq[rtid].data_sent ) ));
    if isundefined(guard_failed) then
    Guard(((!(self.cq[rtid].opcode=IDI_Opcode__DirtyEvict) & !(self.cq[rtid].opcode=IDI_Opcode__DirtyEvictNoInv) ) |  self.cq[rtid].data_sent ));
    if isundefined(guard_failed) then
    CQEntry__release(self.cq[rtid]);
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
    endif;
end;

procedure IDIAgent__send_write_data(var self: IDIAgent; idx: RTID; data: Line; be: BE);
var
  packet: IDIPacket;
begin
    Guard((self.cq[idx].valid &  !(self.cq[idx].data_sent) &  self.cq[idx].resp_recvd ));
    if isundefined(guard_failed) then
    Guard((self.cq[idx].opcode=IDI_Opcode__ItoMWr | self.cq[idx].opcode=IDI_Opcode__CleanEvict | self.cq[idx].opcode=IDI_Opcode__CleanEvictNoInvalidate | self.cq[idx].opcode=IDI_Opcode__DirtyEvict | self.cq[idx].opcode=IDI_Opcode__DirtyEvictNoInv | self.cq[idx].opcode=IDI_Opcode__WOWrInv | self.cq[idx].opcode=IDI_Opcode__WOWrInvF | self.cq[idx].opcode=IDI_Opcode__WrInv | self.cq[idx].opcode=IDI_Opcode__MemWr ));
    if isundefined(guard_failed) then
    Guard((!((self.cq[idx].opcode=IDI_Opcode__CleanEvict | self.cq[idx].opcode=IDI_Opcode__CleanEvictNoInvalidate )) |  (self.cq[idx].resp_opcode = IDI_Opcode__GoWritePull) ));
    if isundefined(guard_failed) then
      self.cq[idx].data_sent := True;
      if (self.cq[idx].opcode=IDI_Opcode__ItoMWr | self.cq[idx].opcode=IDI_Opcode__WOWrInv | self.cq[idx].opcode=IDI_Opcode__WOWrInvF | self.cq[idx].opcode=IDI_Opcode__WrInv | self.cq[idx].opcode=IDI_Opcode__MemWr ) then
        packet.opcode:=IDI_Opcode__Data;
        packet.htid:=self.cq[idx].htid;
        packet.bogus:=self.cq[idx].bogus;
        packet.data:=data;
        packet.be:=be;
        self.to_hbo := packet;
        self.to_hbo__update:=True;
        rbw_port_transfer();
      elsif (self.cq[idx].opcode=IDI_Opcode__CleanEvict | self.cq[idx].opcode=IDI_Opcode__CleanEvictNoInvalidate | self.cq[idx].opcode=IDI_Opcode__DirtyEvict | self.cq[idx].opcode=IDI_Opcode__DirtyEvictNoInv ) then
        packet.opcode:=IDI_Opcode__Data;
        packet.htid:=self.cq[idx].htid;
        packet.bogus:=self.cq[idx].bogus;
        packet.data:=self.cache[self.cq[idx].address].data;
        packet.be:=self.cache[self.cq[idx].address].be;
        self.to_hbo := packet;
        self.to_hbo__update:=True;
        rbw_port_transfer();
      endif;
      if (self.cq[idx].opcode=IDI_Opcode__CleanEvict | self.cq[idx].opcode=IDI_Opcode__DirtyEvict ) then
        CacheEntry__release(self.cache[self.cq[idx].address]);
      elsif ((self.cq[idx].opcode=IDI_Opcode__DirtyEvictNoInv ) &  (self.cache[self.cq[idx].address].state = CacheState__M) ) then
        self.cache[self.cq[idx].address].state := CacheState__E;
      endif;
    endif;
    endif;
    endif;
end;

procedure IDIAgent__send_ack_response(var self: IDIAgent; idx: RTID);
var
  packet: IDIPacket;
begin
    Guard((self.cq[idx].valid &  self.cq[idx].resp_recvd &  !(self.cq[idx].data_sent) ));
    if isundefined(guard_failed) then
    Guard(((self.cq[idx].opcode=IDI_Opcode__CleanEvict | self.cq[idx].opcode=IDI_Opcode__CleanEvictNoInvalidate ) &  (self.cq[idx].resp_opcode = IDI_Opcode__GoWritePullDrop) ));
    if isundefined(guard_failed) then
      self.cq[idx].data_sent := True;
      packet.opcode:=IDI_Opcode__GOAck;
      packet.htid:=self.cq[idx].htid;
      self.to_hbo := packet;
      self.to_hbo__update:=True;
      rbw_port_transfer();
    endif;
    endif;
end;

function IDIAgent__no_active_req(var self: IDIAgent; address: Address):boolean;
begin
    for id: RTID do
        if (self.cq[id].valid &  (self.cq[id].address = address) &  (self.cq[id].opcode=IDI_Opcode__CleanEvict | self.cq[id].opcode=IDI_Opcode__CleanEvictNoInvalidate | self.cq[id].opcode=IDI_Opcode__CleanEvictNoData | self.cq[id].opcode=IDI_Opcode__CLFlush | self.cq[id].opcode=IDI_Opcode__CLWB ) ) then
          return False;
        elsif (self.cq[id].valid &  (self.cq[id].address = address) &  (self.cq[id].opcode=IDI_Opcode__RdAny | self.cq[id].opcode=IDI_Opcode__RdOwn ) &  self.cq[id].resp_recvd &  !(self.cq[id].data_recvd) ) then
          return False;
        endif;
    endfor;
    for id: Snoopq_sz do
        if (self.snoopq[id].valid &  (self.snoopq[id].address = address) &  self.snoopq[id].resp_computed ) then
          return False;
        endif;
    endfor;
    return True;
end;

procedure IDIAgent__modify_cacheline(var self: IDIAgent; address: Address; word: Word; data: Data);
begin
    Guard(IDIAgent__no_active_req(self, address));
    if isundefined(guard_failed) then
    Guard((self.cache[address].state=CacheState__E | self.cache[address].state=CacheState__M ));
    if isundefined(guard_failed) then
    Guard((!(self.cache[address].be[word]) |  (self.cache[address].data[word] != data) ));
    if isundefined(guard_failed) then
      self.cache[address].state := CacheState__M;
      self.cache[address].data[word] := data;
      self.cache[address].be[word] := True;
    endif;
    endif;
    endif;
end;

procedure Channel__5__reset(var self: Channel__5);
begin
    self.count := 0;
    undefine self.pkts;
end;

function Channel__5__pop(var self: Channel__5; index: Index__1):AgentPacket;
var
  pkt: AgentPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure Channel__5__left_shift(var self: Channel__5; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure Channel__6__reset(var self: Channel__6);
begin
    self.count := 0;
    undefine self.pkts;
end;

function Channel__6__pop(var self: Channel__6; index: Index__1):AgentPacket;
var
  pkt: AgentPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure Channel__6__left_shift(var self: Channel__6; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure Channel__7__reset(var self: Channel__7);
begin
    self.count := 0;
    undefine self.pkts;
end;

function Channel__7__pop(var self: Channel__7; index: Index__1):AgentPacket;
var
  pkt: AgentPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure Channel__7__left_shift(var self: Channel__7; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure Channel__8__reset(var self: Channel__8);
begin
    self.count := 0;
    undefine self.pkts;
end;

function Channel__8__pop(var self: Channel__8; index: Index__1):AgentPacket;
var
  pkt: AgentPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure Channel__8__left_shift(var self: Channel__8; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure Channel__9__reset(var self: Channel__9);
begin
    self.count := 0;
    undefine self.pkts;
end;

function Channel__9__pop(var self: Channel__9; index: Index__1):AgentPacket;
var
  pkt: AgentPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure Channel__9__left_shift(var self: Channel__9; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure Channel__10__reset(var self: Channel__10);
begin
    self.count := 0;
    undefine self.pkts;
end;

function Channel__10__pop(var self: Channel__10; index: Index__1):AgentPacket;
var
  pkt: AgentPacket;
begin
    pkt := self.pkts[index];
    return pkt;
end;

procedure Channel__10__left_shift(var self: Channel__10; index: Index__1);
begin
    for i:= index to (self.count - 1)-1 do
        self.pkts[i] := self.pkts[(i + 1)];
    endfor;
    self.count := (self.count - 1);
    undefine self.pkts[self.count];
end;

procedure Link__reset(var self: Link; network_id: IDICAgents);
begin
    Channel__5__reset(self.A2FReq);
    Channel__8__reset(self.A2FResp);
    Channel__6__reset(self.F2AResp);
    Channel__7__reset(self.F2AData);
    Channel__10__reset(self.F2AReq);
    Channel__9__reset(self.A2FData);
    self.network_id := network_id;
end;

procedure Link__send_A2FReq_packet(var self: Link; index: CHANNEL_SIZE);
var
  packet: AgentPacket;
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.A2FReq.count));
    if isundefined(guard_failed) then
      packet := Channel__5__pop(self.A2FReq, index);
      self.to_fabric := packet;
      self.to_fabric__update:=True;
      rbw_port_transfer();
    Channel__5__left_shift(self.A2FReq, index);
    endif;
    endif;
end;

procedure Link__send_F2AResp_packet(var self: Link; index: CHANNEL_SIZE);
var
  pkt: AgentPacket;
  packet: IDIPacket;
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.F2AResp.count));
    if isundefined(guard_failed) then
      pkt := Channel__6__pop(self.F2AResp, index);
      packet := pkt.packet;
      self.to_agent := packet;
      self.to_agent__update:=True;
      rbw_port_transfer();
    Channel__6__left_shift(self.F2AResp, index);
    endif;
    endif;
end;

procedure Link__send_F2AData_packet(var self: Link; index: CHANNEL_SIZE);
var
  pkt: AgentPacket;
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.F2AData.count));
    if isundefined(guard_failed) then
      pkt := Channel__7__pop(self.F2AData, index);
      self.to_agent := pkt.packet;
      self.to_agent__update:=True;
      rbw_port_transfer();
    Channel__7__left_shift(self.F2AData, index);
    endif;
    endif;
end;

function Link__no_pending_GO(var self: Link; var packet: AgentPacket):boolean;
var
  flag: boolean;
begin
    flag := True;
    for id: Index__1 do
        if ((id < self.F2AResp.count) &  (self.F2AResp.pkts[id].packet.opcode=IDI_Opcode__GO | self.F2AResp.pkts[id].packet.opcode=IDI_Opcode__GoWritePull ) ) then
          flag := False;
        endif;
    endfor;
    return ((self.F2AResp.count = 0) |  flag );
end;

procedure Link__send_F2AReq_packet(var self: Link; index: CHANNEL_SIZE);
var
  pkt: AgentPacket;
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.F2AReq.count));
    if isundefined(guard_failed) then
    Guard(Link__no_pending_GO(self, self.F2AReq.pkts[index]));
    if isundefined(guard_failed) then
      pkt := Channel__10__pop(self.F2AReq, index);
      self.to_agent := pkt.packet;
      self.to_agent__update:=True;
      rbw_port_transfer();
    Channel__10__left_shift(self.F2AReq, index);
    endif;
    endif;
    endif;
end;

procedure Link__send_A2FResp_packet(var self: Link; index: CHANNEL_SIZE);
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.A2FResp.count));
    if isundefined(guard_failed) then
      self.to_fabric := Channel__8__pop(self.A2FResp, index);
      self.to_fabric__update:=True;
      rbw_port_transfer();
    Channel__8__left_shift(self.A2FResp, index);
    endif;
    endif;
end;

procedure Link__send_A2FData_packet(var self: Link; index: CHANNEL_SIZE);
begin
    Guard((index < MAX__1));
    if isundefined(guard_failed) then
    Guard((index < self.A2FData.count));
    if isundefined(guard_failed) then
      self.to_fabric := Channel__9__pop(self.A2FData, index);
      self.to_fabric__update:=True;
      rbw_port_transfer();
    Channel__9__left_shift(self.A2FData, index);
    endif;
    endif;
end;

procedure Aux__update_data(var self: Aux; addr: Address; word: Word; data: Data);
begin
    self.latest_data[addr][word] := data;
end;

procedure NVL__update_buffer(var self: State; word: Word; data: Data);
begin
    Guard(!(self.buffer_be[word]));
    if isundefined(guard_failed) then
      self.idic_buffer[word] := data;
      self.buffer_be[word] := True;
    endif;
end;

procedure NVL__reset_buffer(var self: State);
begin
    undefine self.idic_buffer;
    for word: Word do
        self.buffer_be[word] := False;
    endfor;
end;

procedure NVL__idicagent_new_request(var self: State; idx: IDICAgents; opcode: IDI_Opcode; address: Address; selfsnp: Boolean; cache_near: Boolean);
begin
    Guard((idx = 1));
    if isundefined(guard_failed) then
    Guard((opcode=IDI_Opcode__RdOwnNoData | opcode=IDI_Opcode__CLWB ));
    if isundefined(guard_failed) then
    Guard((mufasa_mode |  cache_near ));
    if isundefined(guard_failed) then
    IDIAgent__new_request(self.IDICAgent[idx], opcode, address, selfsnp, cache_near);
    if isundefined(guard_failed) then
    endif;
    endif;
    endif;
    endif;
end;

procedure NVL__hbo_sf_lookup_phase(var self: State; htid: HTID; choice: Boolean);
begin
    HBo__SF_lookup_phase(self.hbo, htid, choice);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_early_MFS_lookup_phase(var self: State; htid: HTID);
begin
    HBo__early_MFS_lookup_phase(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_snoop_to_idicagent(var self: State; htid: HTID; id: IDICAgents);
begin
    HBo__send_snoop_to_idicagent(self.hbo, htid, id);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__idicagent_compute_snoop_response(var self: State; agent: IDICAgents; idx: Snoopq_sz; bias: range__3);
begin
    IDIAgent__compute_snoop_response(self.IDICAgent[agent], idx, bias);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__idicagent_send_snoop_response(var self: State; agent: IDICAgents; idx: Snoopq_sz);
begin
    IDIAgent__send_snoop_response(self.IDICAgent[agent], idx);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_early_response_to_idicagent(var self: State; htid: HTID);
begin
    HBo__send_early_response_to_idicagent(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_late_mufasa_lookup_phase(var self: State; htid: HTID);
begin
    HBo__late_mufasa_lookup_phase(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_mufasa_alloc_and_update(var self: State; htid: HTID);
begin
    HBo__mufasa_alloc_and_update(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_late_response_to_idicagent(var self: State; htid: HTID);
begin
    HBo__send_late_response_to_idicagent(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_data_to_idicagent(var self: State; htid: HTID);
begin
    HBo__send_data_to_idicagent(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_release_tractor_entry(var self: State; htid: HTID);
begin
    HBo__release_tractor_entry(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__link_send_A2FReq_packet(var self: State; agent: IDICAgents; index: CHANNEL_SIZE);
begin
    Link__send_A2FReq_packet(self.idiclink[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__link_send_A2FResp_packet(var self: State; agent: IDICAgents; index: CHANNEL_SIZE);
begin
    Link__send_A2FResp_packet(self.idiclink[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__link_send_A2FData_packet(var self: State; agent: IDICAgents; index: CHANNEL_SIZE);
begin
    Link__send_A2FData_packet(self.idiclink[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__link_send_F2AReq_packet(var self: State; agent: IDICAgents; index: CHANNEL_SIZE);
begin
    Link__send_F2AReq_packet(self.idiclink[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__link_send_F2AResp_packet(var self: State; agent: IDICAgents; index: CHANNEL_SIZE);
var
  no_other_agent_is_in_M_state: boolean;
  way_found: boolean;
  hit_way: MFS_WAYS;
begin
    Guard((index < self.idiclink[agent].F2AResp.count));
    if isundefined(guard_failed) then
      no_other_agent_is_in_M_state := True;
      way_found := False;
      for n: IDICAgents do
          if ((n != agent) &  (self.IDICAgent[n].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].state=CacheState__M ) ) then
            no_other_agent_is_in_M_state := False;
          endif;
      endfor;
      for n: UPIAgents do
          if (self.UPIAgent[n].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].state=CacheState__M ) then
            no_other_agent_is_in_M_state := False;
          endif;
      endfor;
      if (self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].opcode=IDI_Opcode__WOWrInv | self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].opcode=IDI_Opcode__WrInv ) then
        if (self.IDICAgent[agent].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].state = CacheState__M) then
          for word: Word do
              if self.IDICAgent[agent].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].be[word] then
                self.buffer_be[word] := True;
                self.idic_buffer[word] := self.IDICAgent[agent].cache[self.IDICAgent[agent].cq[self.idiclink[agent].F2AResp.pkts[index].packet.rtid].address].data[word];
              endif;
          endfor;
        endif;
      endif;
    Link__send_F2AResp_packet(self.idiclink[agent], index);
    if isundefined(guard_failed) then
    endif;
    endif;
end;

procedure NVL__link_send_F2AData_packet(var self: State; agent: IDICAgents; index: CHANNEL_SIZE);
begin
    Link__send_F2AData_packet(self.idiclink[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__agent_release_cq_entry(var self: State; agent: IDICAgents; rtid: RTID);
begin
    IDIAgent__release_cq_entry(self.IDICAgent[agent], rtid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_snoop_to_upiagent(var self: State; htid: HTID; id: UPIAgents);
begin
    HBo__send_snoop_to_upiagent(self.hbo, htid, id);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__ulink_send_HASnp_packet(var self: State; agent: UPIAgents; index: CHANNEL_SIZE);
begin
    ULink__send_HASnp_packet(self.santa[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__upiagent_process_snoop_entry(var self: State; agent: UPIAgents; idx: Address; resp_opcode: UPI_Opcode);
begin
    CA__process_snoop_entry(self.UPIAgent[agent], idx, resp_opcode);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__ulink_send_CAResp_packet(var self: State; agent: UPIAgents; index: CHANNEL_SIZE);
begin
    ULink__send_CAResp_packet(self.santa[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

function NVL__is_buffer_full(var self: State):boolean;
begin
    for word: Word do
        if !(self.buffer_be[word]) then
          return False;
        endif;
    endfor;
    return True;
end;

function NVL__is_buffer_empty(var self: State):boolean;
begin
    for word: Word do
        if self.buffer_be[word] then
          return False;
        endif;
    endfor;
    return True;
end;

procedure NVL__agent_send_write_data(var self: State; agent: IDICAgents; index: RTID);
begin
    Guard(self.IDICAgent[agent].cq[index].valid);
    if isundefined(guard_failed) then
    Guard((!((self.IDICAgent[agent].cq[index].opcode=IDI_Opcode__ItoMWr | self.IDICAgent[agent].cq[index].opcode=IDI_Opcode__WOWrInvF | self.IDICAgent[agent].cq[index].opcode=IDI_Opcode__MemWr )) |  NVL__is_buffer_full(self) ));
    if isundefined(guard_failed) then
    IDIAgent__send_write_data(self.IDICAgent[agent], index, self.idic_buffer, self.buffer_be);
    if isundefined(guard_failed) then
      if (self.IDICAgent[agent].cq[index].opcode=IDI_Opcode__ItoMWr | self.IDICAgent[agent].cq[index].opcode=IDI_Opcode__WOWrInv | self.IDICAgent[agent].cq[index].opcode=IDI_Opcode__WOWrInvF | self.IDICAgent[agent].cq[index].opcode=IDI_Opcode__WrInv | self.IDICAgent[agent].cq[index].opcode=IDI_Opcode__MemWr ) then
        for word: Word do
            if self.buffer_be[word] then
              Aux__update_data(self.aux, self.IDICAgent[agent].cq[index].address, word, self.idic_buffer[word]);
            endif;
        endfor;
      endif;
    NVL__reset_buffer(self);
    endif;
    endif;
    endif;
end;

procedure NVL__idicagent_modify_cacheline(var self: State; agent: IDICAgents; address: Address; word: Word; data: Data);
begin
    IDIAgent__modify_cacheline(self.IDICAgent[agent], address, word, data);
    if isundefined(guard_failed) then
    Aux__update_data(self.aux, address, word, data);
  endif;
end;

procedure NVL__idicagent_send_snoop_data(var self: State; agent: IDICAgents; index: Snoopq_sz);
begin
    IDIAgent__send_snoop_data(self.IDICAgent[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__ca_send_new_request(var self: State; idx: UPIAgents; address: Address; opcode: UPI_Opcode; alloc_hint: Boolean);
begin
    Guard(((idx = 0) |  (idx = 1) ));
    if isundefined(guard_failed) then
    Guard((mufasa_mode |  alloc_hint ));
    if isundefined(guard_failed) then
    Guard((opcode=UPI_Opcode__RdCode | opcode=UPI_Opcode__WbMtoE ));
    if isundefined(guard_failed) then
    CA__send_new_request(self.UPIAgent[idx], address, opcode, alloc_hint);
    if isundefined(guard_failed) then
    endif;
    endif;
    endif;
    endif;
end;

procedure NVL__ulink_send_CAReq_packet(var self: State; agent: UPIAgents; index: CHANNEL_SIZE);
begin
    ULink__send_CAReq_packet(self.santa[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_response_to_upiagent(var self: State; htid: HTID);
begin
    HBo__send_response_to_upiagent(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_data_to_upiagent(var self: State; htid: HTID);
begin
    HBo__send_data_to_upiagent(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__ulink_send_HAResp_packet(var self: State; agent: UPIAgents; index: CHANNEL_SIZE);
begin
    ULink__send_HAResp_packet(self.santa[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__ulink_send_MCResp_packet(var self: State; agent: UPIAgents; index: CHANNEL_SIZE);
begin
    ULink__send_MCResp_packet(self.santa[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_release_tractor_uentry(var self: State; htid: HTID);
begin
    HBo__release_tractor_uentry(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__upiagent_modify_cacheline(var self: State; agent: UPIAgents; address: Address; word: Word; data: Data);
begin
    CA__ca_modify_cacheline(self.UPIAgent[agent], address, word, data);
    if isundefined(guard_failed) then
    Aux__update_data(self.aux, address, word, data);
  endif;
end;

procedure NVL__downgrade_cacheline(var self: State; agent: UPIAgents; address: Address; cacheOp: CacheOp);
begin
    CA__ca_downgrade_cacheline(self.UPIAgent[agent], address, cacheOp);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__ca_request_fwd_conflict(var self: State; agent: UPIAgents; address: Address);
begin
    CA__request_fwd_conflict(self.UPIAgent[agent], address);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__ulink_send_CAWb_packet(var self: State; agent: UPIAgents; index: CHANNEL_SIZE);
begin
    ULink__send_CAWb_packet(self.santa[agent], index);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_fwd_response(var self: State; htid: HTID);
begin
    HBo__send_fwd_response(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_response_for_ClrMonitor(var self: State; htid: HTID);
begin
    HBo__send_response_for_clrmonitor(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__idicagent_send_ack_response(var self: State; agent: IDICAgents; rtid: RTID);
begin
    IDIAgent__send_ack_response(self.IDICAgent[agent], rtid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_memory_request(var self: State; htid: HTID);
begin
    HBo__send_memory_request(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_recv_memory_response(var self: State; mctid: MEM_TORID);
begin
    HBo__send_memory_response(self.hbo, mctid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__move_to_memory_domain(var self: State; htid: HTID);
begin
    HBo__move_to_memory_domain(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_fastgo_response_to_idicagent(var self: State; htid: HTID);
begin
    HBo__send_fastgo_response_to_idicagent(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_send_parallel_mem_read_request(var self: State; htid: HTID);
begin
    HBo__send_parallel_mem_read_request(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

procedure NVL__hbo_mufasa_early_read(var self: State; htid: HTID);
begin
    HBo__mufasa_early_read(self.hbo, htid);
    if isundefined(guard_failed) then
  endif;
end;

function NVL__cache_state_consistency(var self: State):boolean;
var
  ongoing_req: boolean;
  count_ME: Agent_countp1;
  count_S: Agent_countp1;
begin
    ongoing_req := False;
    for addr: Address do
        count_ME := 0;
        count_S := 0;
        for idx: HTID do
            if (self.hbo.tractor[idx].valid &  (self.hbo.tractor[idx].address = addr) &  (self.hbo.tractor[idx].sf_lookup_done |  self.hbo.tractor[idx].resp_sent |  self.hbo.tractor[idx].data_sent ) ) then
              ongoing_req := True;
            endif;
        endfor;
        for id: IDICAgents do
            if (self.idiclink[id].F2AResp.count > 0) then
              ongoing_req := True;
            endif;
            if (self.IDICAgent[id].cache[addr].state=CacheState__M | self.IDICAgent[id].cache[addr].state=CacheState__E ) then
              count_ME := (count_ME + 1);
            elsif (self.IDICAgent[id].cache[addr].state=CacheState__S ) then
              count_S := (count_S + 1);
            endif;
        endfor;
        for id: UPIAgents do
            if (self.UPIAgent[id].cache[addr].state=CacheState__M | self.UPIAgent[id].cache[addr].state=CacheState__E ) then
              count_ME := (count_ME + 1);
            elsif (self.UPIAgent[id].cache[addr].state=CacheState__S ) then
              count_S := (count_S + 1);
            endif;
        endfor;
        if (!(ongoing_req) &  (((count_ME > 0) &  (count_S > 0) ) |  (count_ME > 1) ) ) then
          return False;
        endif;
    endfor;
    return True;
end;

function NVL__snoop_filter_cs_consistency(var self: State):boolean;
var
  ongoing_req: boolean;
  tag_match: boolean;
  way: SF_WAYS;
begin
    ongoing_req := False;
    for addr: Address do
        for idx: HTID do
            if (self.hbo.tractor[idx].valid &  (self.hbo.tractor[idx].address = addr) &  self.hbo.tractor[idx].sf_lookup_done ) then
              ongoing_req := True;
            endif;
        endfor;
        for agent: IDICAgents do
            if (self.idiclink[agent].F2AResp.count > 0) then
              ongoing_req := True;
            endif;
        endfor;
        for agent: UPIAgents do
            if (self.santa[agent].HAResp.count > 0) then
              ongoing_req := True;
            endif;
        endfor;
        tag_match := False;
        for id: SF_WAYS do
            if (self.hbo.sf[id].valid &  (self.hbo.sf[id].address = addr) ) then
              tag_match := True;
              way := id;
            endif;
        endfor;
        if !(ongoing_req) then
          if tag_match then
            if self.hbo.sf[way].CV_format then
              for id:= NUM_SOTFTSIDICAgents to (NUM_SOTFTSIDICAgents + NUM_EXCIDICAgents)-1 do
                  if ((self.hbo.sf[way].owner_id != id) &  (!(self.IDICAgent[id].cache[addr].state=CacheState__I) ) ) then
                    return False;
                  endif;
              endfor;
              for id: SOTFTSIDICAgents do
                  if self.hbo.sf[way].CV_bits_idic[id] then
                    return False;
                  endif;
                  if (!(self.IDICAgent[id].cache[addr].state=CacheState__I) ) then
                    return False;
                  endif;
              endfor;
              for id:= NUM_SOTFTSUPIAgents to (NUM_SOTFTSUPIAgents + NUM_EXCUPIAgents)-1 do
                  if ((self.hbo.sf[way].owner_id != id) &  (!(self.UPIAgent[id].cache[addr].state=CacheState__I) ) ) then
                    return False;
                  endif;
              endfor;
              for id: SOTFTSUPIAgents do
                  if self.hbo.sf[way].CV_bits_upi[id] then
                    return False;
                  endif;
                  if (!(self.UPIAgent[id].cache[addr].state=CacheState__I) ) then
                    return False;
                  endif;
              endfor;
            else
              for id:= NUM_SOTIDICAgents to (NUM_SOTIDICAgents + NUM_FTSIDICAgents)-1 do
                  if (!(self.hbo.sf[way].CV_bits_idic[id]) &  (!(self.IDICAgent[id].cache[addr].state=CacheState__I) ) ) then
                    return False;
                  endif;
              endfor;
              for id:= NUM_SOTFTSIDICAgents to (NUM_SOTFTSIDICAgents + NUM_EXCIDICAgents)-1 do
                  if (!(self.IDICAgent[id].cache[addr].state=CacheState__I) ) then
                    return False;
                  endif;
              endfor;
              for id:= NUM_SOTUPIAgents to (NUM_SOTUPIAgents + NUM_FTSUPIAgents)-1 do
                  if (!(self.hbo.sf[way].CV_bits_upi[id]) &  (!(self.UPIAgent[id].cache[addr].state=CacheState__I) ) ) then
                    return False;
                  endif;
              endfor;
              for id:= NUM_SOTFTSUPIAgents to (NUM_SOTFTSUPIAgents + NUM_EXCUPIAgents)-1 do
                  if (!(self.UPIAgent[id].cache[addr].state=CacheState__I) ) then
                    return False;
                  endif;
              endfor;
            endif;
          endif;
        endif;
    endfor;
    return True;
end;

function NVL__data_consistency(var self: State):boolean;
var
  no_device_in_M: boolean;
  way: MFS_WAYS;
  active_req_in_tor: boolean;
  ongoing_req: boolean;
begin
    for addr: Address do
        no_device_in_M := True;
        for n: IDICAgents do
            if (self.IDICAgent[n].cache[addr].state=CacheState__M ) then
              no_device_in_M := False;
            endif;
        endfor;
        for n: UPIAgents do
            if (self.UPIAgent[n].cache[addr].state=CacheState__M ) then
              no_device_in_M := False;
            endif;
        endfor;
        for id: MFS_WAYS do
            if (self.hbo.mufasa[id].valid &  (self.hbo.mufasa[id].address = addr) &  (self.hbo.mufasa[id].state = MFSState__M) ) then
              no_device_in_M := False;
            endif;
        endfor;
        active_req_in_tor := False;
        for torid: HTID do
            if (self.hbo.tractor[torid].valid &  (self.hbo.tractor[torid].address = addr) &  (self.hbo.tractor[torid].sf_lookup_done |  self.hbo.tractor[torid].resp_sent |  self.hbo.tractor[torid].data_sent ) ) then
              active_req_in_tor := True;
            endif;
        endfor;
        ongoing_req := False;
        for agent: UPIAgents do
            for torid: RTID do
                if ((self.UPIAgent[agent].tor[torid].state != RTID_STATE__Idle) &  (self.UPIAgent[agent].tor[torid].address = addr) ) then
                  ongoing_req := True;
                endif;
            endfor;
        endfor;
        for agent: IDICAgents do
            for cqid: RTID do
                if (self.IDICAgent[agent].cq[cqid].valid &  (self.IDICAgent[agent].cq[cqid].address = addr) ) then
                  ongoing_req := True;
                endif;
            endfor;
        endfor;
        if (no_device_in_M &  !(active_req_in_tor) &  !(ongoing_req) ) then
          for word: Word do
              if (self.hbo.mem[addr][word] != self.aux.latest_data[addr][word]) then
                return False;
              endif;
          endfor;
        endif;
        if !(ongoing_req) then
          for agent: IDICAgents do
              for word: Word do
                  if ((self.IDICAgent[agent].cache[addr].state != CacheState__I) &  self.IDICAgent[agent].cache[addr].be[word] &  (self.IDICAgent[agent].cache[addr].data[word] != self.aux.latest_data[addr][word]) ) then
                    return False;
                  endif;
              endfor;
          endfor;
          for agent: UPIAgents do
              for word: Word do
                  if ((self.UPIAgent[agent].cache[addr].state != CacheState__I) &  self.UPIAgent[agent].cache[addr].be[word] &  (self.UPIAgent[agent].cache[addr].data[word] != self.aux.latest_data[addr][word]) ) then
                    return False;
                  endif;
              endfor;
          endfor;
        endif;
    endfor;
    return True;
end;

function NVL__never_snoop_requestor_UPIAgent(var self: State):boolean;
begin
    for id: HTID do
        if (self.hbo.tractor[id].valid &  (self.hbo.tractor[id].protocol = Protocol__UPI) &  self.hbo.tractor[id].sf_lookup_done &  self.hbo.tractor[id].upi_snoop_target[self.hbo.tractor[id].agent_id] ) then
          return False;
        endif;
    endfor;
    return True;
end;

function NVL__no_selfsnp_for_IDIC_agent_in_certain_opcodes(var self: State):boolean;
begin
    for id: HTID do
        if (self.hbo.tractor[id].valid &  (self.hbo.tractor[id].protocol = Protocol__IDIC) &  self.hbo.tractor[id].sf_lookup_done &  (self.hbo.tractor[id].iopcode=IDI_Opcode__CleanEvict | self.hbo.tractor[id].iopcode=IDI_Opcode__CleanEvictNoInvalidate | self.hbo.tractor[id].iopcode=IDI_Opcode__DirtyEvict | self.hbo.tractor[id].iopcode=IDI_Opcode__DirtyEvictNoInv | self.hbo.tractor[id].iopcode=IDI_Opcode__CleanEvictNoData ) &  self.hbo.tractor[id].idic_snoop_target[self.hbo.tractor[id].agent_id] ) then
          return False;
        endif;
    endfor;
    return True;
end;

function NVL__snoop_target_vs_snpneeded(var self: State):boolean;
var
  one_target: boolean;
begin
    one_target := False;
    for id: HTID do
        if (self.hbo.tractor[id].valid &  self.hbo.tractor[id].sf_lookup_done &  !(self.hbo.tractor[id].snpneeded) ) then
          for agent: IDICAgents do
              if self.hbo.tractor[id].idic_snoop_target[agent] then
                return False;
              endif;
          endfor;
          for agent: UPIAgents do
              if self.hbo.tractor[id].upi_snoop_target[agent] then
                return False;
              endif;
          endfor;
        elsif (self.hbo.tractor[id].valid &  self.hbo.tractor[id].sf_lookup_done &  self.hbo.tractor[id].snpneeded ) then
          for agent: IDICAgents do
              if self.hbo.tractor[id].idic_snoop_target[agent] then
                one_target := True;
              endif;
          endfor;
          for agent: UPIAgents do
              if self.hbo.tractor[id].upi_snoop_target[agent] then
                one_target := True;
              endif;
          endfor;
          return one_target;
        endif;
    endfor;
    return True;
end;

StartState "reset"
begin
    HBo__reset(self.hbo);
    for id: IDICAgents do
        IDIAgent__reset(self.IDICAgent[id]);
        Link__reset(self.idiclink[id], id);
    endfor;
    for id: UPIAgents do
        CA__reset(self.UPIAgent[id], id);
        ULink__reset(self.santa[id]);
    endfor;
    undefine self.idic_buffer;
    for word: Word do
        self.buffer_be[word] := False;
    endfor;
    for addr: Address do
        self.aux.latest_data[addr] := self.hbo.mem[addr];
    endfor;
end;

RuleSet
  word:Word;
  data:Data
do
Rule "update_buffer"
var
   temp_state: State;
begin
  temp_state:=self;
  NVL__update_buffer(self, word, data);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID;
  choice:Boolean
do
Rule "hbo_sf_lookup_phase"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_sf_lookup_phase(self ,htid ,choice);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_early_MFS_lookup_phase"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_early_MFS_lookup_phase(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID;
  id:IDICAgents
do
Rule "hbo_send_snoop_to_idicagent"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_snoop_to_idicagent(self ,htid ,id);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  idx:Snoopq_sz;
  bias:range__3
do
Rule "idicagent_compute_snoop_response"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__idicagent_compute_snoop_response(self ,agent ,idx ,bias);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  idx:Snoopq_sz
do
Rule "idicagent_send_snoop_response"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__idicagent_send_snoop_response(self ,agent ,idx);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_send_early_response_to_idicagent"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_early_response_to_idicagent(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_late_mufasa_lookup_phase"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_late_mufasa_lookup_phase(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_mufasa_alloc_and_update"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_mufasa_alloc_and_update(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_send_late_response_to_idicagent"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_late_response_to_idicagent(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_send_data_to_idicagent"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_data_to_idicagent(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_release_tractor_entry"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_release_tractor_entry(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  index:CHANNEL_SIZE
do
Rule "link_send_A2FReq_packet"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__link_send_A2FReq_packet(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  index:CHANNEL_SIZE
do
Rule "link_send_A2FResp_packet"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__link_send_A2FResp_packet(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  index:CHANNEL_SIZE
do
Rule "link_send_A2FData_packet"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__link_send_A2FData_packet(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  index:CHANNEL_SIZE
do
Rule "link_send_F2AReq_packet"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__link_send_F2AReq_packet(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  index:CHANNEL_SIZE
do
Rule "link_send_F2AResp_packet"
var
   temp_state: State;
begin
  temp_state:=self;
  NVL__link_send_F2AResp_packet(self, agent, index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  index:CHANNEL_SIZE
do
Rule "link_send_F2AData_packet"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__link_send_F2AData_packet(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  rtid:RTID
do
Rule "agent_release_cq_entry"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__agent_release_cq_entry(self ,agent ,rtid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID;
  id:UPIAgents
do
Rule "hbo_send_snoop_to_upiagent"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_snoop_to_upiagent(self ,htid ,id);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:UPIAgents;
  index:CHANNEL_SIZE
do
Rule "ulink_send_HASnp_packet"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__ulink_send_HASnp_packet(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:UPIAgents;
  idx:Address;
  resp_opcode:UPI_Opcode
do
Rule "upiagent_process_snoop_entry"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__upiagent_process_snoop_entry(self ,agent ,idx ,resp_opcode);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:UPIAgents;
  index:CHANNEL_SIZE
do
Rule "ulink_send_CAResp_packet"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__ulink_send_CAResp_packet(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  index:RTID
do
Rule "agent_send_write_data"
var
   temp_state: State;
begin
  temp_state:=self;
  NVL__agent_send_write_data(self, agent, index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  address:Address;
  word:Word;
  data:Data
do
Rule "idicagent_modify_cacheline"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__idicagent_modify_cacheline(self ,agent ,address ,word ,data);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  index:Snoopq_sz
do
Rule "idicagent_send_snoop_data"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__idicagent_send_snoop_data(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  idx:UPIAgents;
  address:Address;
  opcode:UPI_Opcode;
  alloc_hint:Boolean
do
Rule "ca_send_new_request"
var
   temp_state: State;
begin
  temp_state:=self;
  NVL__ca_send_new_request(self, idx, address, opcode, alloc_hint);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:UPIAgents;
  index:CHANNEL_SIZE
do
Rule "ulink_send_CAReq_packet"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__ulink_send_CAReq_packet(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_send_response_to_upiagent"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_response_to_upiagent(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_send_data_to_upiagent"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_data_to_upiagent(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:UPIAgents;
  index:CHANNEL_SIZE
do
Rule "ulink_send_HAResp_packet"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__ulink_send_HAResp_packet(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:UPIAgents;
  index:CHANNEL_SIZE
do
Rule "ulink_send_MCResp_packet"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__ulink_send_MCResp_packet(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_release_tractor_uentry"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_release_tractor_uentry(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:UPIAgents;
  address:Address;
  word:Word;
  data:Data
do
Rule "upiagent_modify_cacheline"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__upiagent_modify_cacheline(self ,agent ,address ,word ,data);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:UPIAgents;
  address:Address;
  cacheOp:CacheOp
do
Rule "downgrade_cacheline"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__downgrade_cacheline(self ,agent ,address ,cacheOp);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:UPIAgents;
  address:Address
do
Rule "ca_request_fwd_conflict"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__ca_request_fwd_conflict(self ,agent ,address);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:UPIAgents;
  index:CHANNEL_SIZE
do
Rule "ulink_send_CAWb_packet"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__ulink_send_CAWb_packet(self ,agent ,index);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_send_fwd_response"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_fwd_response(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_send_response_for_ClrMonitor"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_response_for_ClrMonitor(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  agent:IDICAgents;
  rtid:RTID
do
Rule "idicagent_send_ack_response"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__idicagent_send_ack_response(self ,agent ,rtid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_send_memory_request"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_memory_request(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  mctid:MEM_TORID
do
Rule "hbo_recv_memory_response"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_recv_memory_response(self ,mctid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "move_to_memory_domain"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__move_to_memory_domain(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_send_fastgo_response_to_idicagent"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_fastgo_response_to_idicagent(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_send_parallel_mem_read_request"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_send_parallel_mem_read_request(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

RuleSet
  htid:HTID
do
Rule "hbo_mufasa_early_read"
var
  temp_state: State;
begin
  temp_state:=self;
  NVL__hbo_mufasa_early_read(self ,htid);
  if !isundefined(guard_failed) then
    if (guard_failed=True) then
      self:=temp_state;
      undefine guard_failed;
    endif;
  endif;
end;
end;

Invariant "cache_state_consistency"
NVL__cache_state_consistency(self);

Invariant "snoop_filter_cs_consistency"
NVL__snoop_filter_cs_consistency(self);

Invariant "data_consistency"
NVL__data_consistency(self);

Invariant "never_snoop_requestor_UPIAgent"
NVL__never_snoop_requestor_UPIAgent(self);

Invariant "no_selfsnp_for_IDIC_agent_in_certain_opcodes"
NVL__no_selfsnp_for_IDIC_agent_in_certain_opcodes(self);

Invariant "snoop_target_vs_snpneeded"
NVL__snoop_target_vs_snpneeded(self);

