(* This file was autogenerated by MPL *)
open Mpl_stdlib
exception Bad_packet of string

type rcode_t = [
  |`NoError
  |`FormErr
  |`ServFail
  |`NXDomain
  |`NotImp
  |`Refused
  |`YXDomain
  |`YXRRSet
  |`NXRRSet
  |`NotAuth
  |`NotZone
  |`BadVers
  |`BadKey
  |`BadTime
  |`BadMode
  |`BadName
  |`BadAlg
  |`Unknown of int
]

let rcode_marshal (a:rcode_t) =
  match a with
  |`NoError -> 0
  |`FormErr -> 1
  |`ServFail -> 2
  |`NXDomain -> 3
  |`NotImp -> 4
  |`Refused -> 5
  |`YXDomain -> 6
  |`YXRRSet -> 7
  |`NXRRSet -> 8
  |`NotAuth -> 9
  |`NotZone -> 10
  |`BadVers -> 16
  |`BadKey -> 17
  |`BadTime -> 18
  |`BadMode -> 19
  |`BadName -> 20
  |`BadAlg -> 21
  |`Unknown x -> x

let rcode_unmarshal a : rcode_t =
  match a with
  |0 -> `NoError
  |1 -> `FormErr
  |2 -> `ServFail
  |3 -> `NXDomain
  |4 -> `NotImp
  |5 -> `Refused
  |6 -> `YXDomain
  |7 -> `YXRRSet
  |8 -> `NXRRSet
  |9 -> `NotAuth
  |10 -> `NotZone
  |16 -> `BadVers
  |17 -> `BadKey
  |18 -> `BadTime
  |19 -> `BadMode
  |20 -> `BadName
  |21 -> `BadAlg
  |x -> `Unknown x

let rcode_to_string (a:rcode_t) =
  match a with
  |`NoError -> "NoError"
  |`FormErr -> "FormErr"
  |`ServFail -> "ServFail"
  |`NXDomain -> "NXDomain"
  |`NotImp -> "NotImp"
  |`Refused -> "Refused"
  |`YXDomain -> "YXDomain"
  |`YXRRSet -> "YXRRSet"
  |`NXRRSet -> "NXRRSet"
  |`NotAuth -> "NotAuth"
  |`NotZone -> "NotZone"
  |`BadVers -> "BadVers"
  |`BadKey -> "BadKey"
  |`BadTime -> "BadTime"
  |`BadMode -> "BadMode"
  |`BadName -> "BadName"
  |`BadAlg -> "BadAlg"
  |`Unknown x -> Printf.sprintf "%d" x

let rcode_of_string s : rcode_t option = match s with
  |"NoError" -> Some `NoError
  |"FormErr" -> Some `FormErr
  |"ServFail" -> Some `ServFail
  |"NXDomain" -> Some `NXDomain
  |"NotImp" -> Some `NotImp
  |"Refused" -> Some `Refused
  |"YXDomain" -> Some `YXDomain
  |"YXRRSet" -> Some `YXRRSet
  |"NXRRSet" -> Some `NXRRSet
  |"NotAuth" -> Some `NotAuth
  |"NotZone" -> Some `NotZone
  |"BadVers" -> Some `BadVers
  |"BadKey" -> Some `BadKey
  |"BadTime" -> Some `BadTime
  |"BadMode" -> Some `BadMode
  |"BadName" -> Some `BadName
  |"BadAlg" -> Some `BadAlg
  |_ -> None

type opcode_t = [
  |`Query
  |`IQuery
  |`Status
  |`Reserved
  |`Notify
  |`Update
  |`Unknown of int
]

let opcode_marshal (a:opcode_t) =
  match a with
  |`Query -> 0
  |`IQuery -> 1
  |`Status -> 2
  |`Reserved -> 3
  |`Notify -> 4
  |`Update -> 5
  |`Unknown x -> x

let opcode_unmarshal a : opcode_t =
  match a with
  |0 -> `Query
  |1 -> `IQuery
  |2 -> `Status
  |3 -> `Reserved
  |4 -> `Notify
  |5 -> `Update
  |x -> `Unknown x

let opcode_to_string (a:opcode_t) =
  match a with
  |`Query -> "Query"
  |`IQuery -> "IQuery"
  |`Status -> "Status"
  |`Reserved -> "Reserved"
  |`Notify -> "Notify"
  |`Update -> "Update"
  |`Unknown x -> Printf.sprintf "%d" x

let opcode_of_string s : opcode_t option = match s with
  |"Query" -> Some `Query
  |"IQuery" -> Some `IQuery
  |"Status" -> Some `Status
  |"Reserved" -> Some `Reserved
  |"Notify" -> Some `Notify
  |"Update" -> Some `Update
  |_ -> None

type qr_t = [
  |`Query
  |`Answer
  |`Unknown of int
]

let qr_marshal (a:qr_t) =
  match a with
  |`Query -> 0
  |`Answer -> 1
  |`Unknown x -> x

let qr_unmarshal a : qr_t =
  match a with
  |0 -> `Query
  |1 -> `Answer
  |x -> `Unknown x

let qr_to_string (a:qr_t) =
  match a with
  |`Query -> "Query"
  |`Answer -> "Answer"
  |`Unknown x -> Printf.sprintf "%d" x

let qr_of_string s : qr_t option = match s with
  |"Query" -> Some `Query
  |"Answer" -> Some `Answer
  |_ -> None

module Questions = struct
  type qclass_t = [
    |`IN
    |`CSNET
    |`CHAOS
    |`HS
    |`NONE
    |`ANY
    |`Unknown of int
  ]

  let qclass_marshal (a:qclass_t) =
    match a with
    |`IN -> 1
    |`CSNET -> 2
    |`CHAOS -> 3
    |`HS -> 4
    |`NONE -> 254
    |`ANY -> 255
    |`Unknown x -> x

  let qclass_unmarshal a : qclass_t =
    match a with
    |1 -> `IN
    |2 -> `CSNET
    |3 -> `CHAOS
    |4 -> `HS
    |254 -> `NONE
    |255 -> `ANY
    |x -> `Unknown x

  let qclass_to_string (a:qclass_t) =
    match a with
    |`IN -> "IN"
    |`CSNET -> "CSNET"
    |`CHAOS -> "CHAOS"
    |`HS -> "HS"
    |`NONE -> "NONE"
    |`ANY -> "ANY"
    |`Unknown x -> Printf.sprintf "%d" x

  let qclass_of_string s : qclass_t option = match s with
    |"IN" -> Some `IN
    |"CSNET" -> Some `CSNET
    |"CHAOS" -> Some `CHAOS
    |"HS" -> Some `HS
    |"NONE" -> Some `NONE
    |"ANY" -> Some `ANY
    |_ -> None

  type qtype_t = [
    |`A
    |`NS
    |`MD
    |`MF
    |`CNAME
    |`SOA
    |`MB
    |`MG
    |`MR
    |`NULL
    |`WKS
    |`PTR
    |`HINFO
    |`MINFO
    |`MX
    |`TXT
    |`RP
    |`AFSDB
    |`X25
    |`ISDN
    |`RT
    |`NSAP
    |`NSAP_PTR
    |`SIG
    |`KEY
    |`PX
    |`GPOS
    |`AAAA
    |`LOC
    |`NXT
    |`EID
    |`NIMLOC
    |`SRV
    |`ATMA
    |`NAPTR
    |`KM
    |`CERT
    |`A6
    |`DNAME
    |`SINK
    |`OPT
    |`APL
    |`DS
    |`SSHFP
    |`IPSECKEY
    |`RRSIG
    |`NSEC
    |`DNSKEY
    |`SPF
    |`UINFO
    |`UID
    |`GID
    |`UNSPEC
    |`AXFR
    |`MAILB
    |`MAILA
    |`ANY
    |`TA
    |`DLV
    |`Unknown of int
  ]

  let qtype_marshal (a:qtype_t) =
    match a with
    |`A -> 1
    |`NS -> 2
    |`MD -> 3
    |`MF -> 4
    |`CNAME -> 5
    |`SOA -> 6
    |`MB -> 7
    |`MG -> 8
    |`MR -> 9
    |`NULL -> 10
    |`WKS -> 11
    |`PTR -> 12
    |`HINFO -> 13
    |`MINFO -> 14
    |`MX -> 15
    |`TXT -> 16
    |`RP -> 17
    |`AFSDB -> 18
    |`X25 -> 19
    |`ISDN -> 20
    |`RT -> 21
    |`NSAP -> 22
    |`NSAP_PTR -> 23
    |`SIG -> 24
    |`KEY -> 25
    |`PX -> 26
    |`GPOS -> 27
    |`AAAA -> 28
    |`LOC -> 29
    |`NXT -> 30
    |`EID -> 31
    |`NIMLOC -> 32
    |`SRV -> 33
    |`ATMA -> 34
    |`NAPTR -> 35
    |`KM -> 36
    |`CERT -> 37
    |`A6 -> 38
    |`DNAME -> 39
    |`SINK -> 40
    |`OPT -> 41
    |`APL -> 42
    |`DS -> 43
    |`SSHFP -> 44
    |`IPSECKEY -> 45
    |`RRSIG -> 46
    |`NSEC -> 47
    |`DNSKEY -> 48
    |`SPF -> 99
    |`UINFO -> 100
    |`UID -> 101
    |`GID -> 102
    |`UNSPEC -> 103
    |`AXFR -> 252
    |`MAILB -> 253
    |`MAILA -> 254
    |`ANY -> 255
    |`TA -> 32768
    |`DLV -> 32769
    |`Unknown x -> x

  let qtype_unmarshal a : qtype_t =
    match a with
    |1 -> `A
    |2 -> `NS
    |3 -> `MD
    |4 -> `MF
    |5 -> `CNAME
    |6 -> `SOA
    |7 -> `MB
    |8 -> `MG
    |9 -> `MR
    |10 -> `NULL
    |11 -> `WKS
    |12 -> `PTR
    |13 -> `HINFO
    |14 -> `MINFO
    |15 -> `MX
    |16 -> `TXT
    |17 -> `RP
    |18 -> `AFSDB
    |19 -> `X25
    |20 -> `ISDN
    |21 -> `RT
    |22 -> `NSAP
    |23 -> `NSAP_PTR
    |24 -> `SIG
    |25 -> `KEY
    |26 -> `PX
    |27 -> `GPOS
    |28 -> `AAAA
    |29 -> `LOC
    |30 -> `NXT
    |31 -> `EID
    |32 -> `NIMLOC
    |33 -> `SRV
    |34 -> `ATMA
    |35 -> `NAPTR
    |36 -> `KM
    |37 -> `CERT
    |38 -> `A6
    |39 -> `DNAME
    |40 -> `SINK
    |41 -> `OPT
    |42 -> `APL
    |43 -> `DS
    |44 -> `SSHFP
    |45 -> `IPSECKEY
    |46 -> `RRSIG
    |47 -> `NSEC
    |48 -> `DNSKEY
    |99 -> `SPF
    |100 -> `UINFO
    |101 -> `UID
    |102 -> `GID
    |103 -> `UNSPEC
    |252 -> `AXFR
    |253 -> `MAILB
    |254 -> `MAILA
    |255 -> `ANY
    |32768 -> `TA
    |32769 -> `DLV
    |x -> `Unknown x

  let qtype_to_string (a:qtype_t) =
    match a with
    |`A -> "A"
    |`NS -> "NS"
    |`MD -> "MD"
    |`MF -> "MF"
    |`CNAME -> "CNAME"
    |`SOA -> "SOA"
    |`MB -> "MB"
    |`MG -> "MG"
    |`MR -> "MR"
    |`NULL -> "NULL"
    |`WKS -> "WKS"
    |`PTR -> "PTR"
    |`HINFO -> "HINFO"
    |`MINFO -> "MINFO"
    |`MX -> "MX"
    |`TXT -> "TXT"
    |`RP -> "RP"
    |`AFSDB -> "AFSDB"
    |`X25 -> "X25"
    |`ISDN -> "ISDN"
    |`RT -> "RT"
    |`NSAP -> "NSAP"
    |`NSAP_PTR -> "NSAP_PTR"
    |`SIG -> "SIG"
    |`KEY -> "KEY"
    |`PX -> "PX"
    |`GPOS -> "GPOS"
    |`AAAA -> "AAAA"
    |`LOC -> "LOC"
    |`NXT -> "NXT"
    |`EID -> "EID"
    |`NIMLOC -> "NIMLOC"
    |`SRV -> "SRV"
    |`ATMA -> "ATMA"
    |`NAPTR -> "NAPTR"
    |`KM -> "KM"
    |`CERT -> "CERT"
    |`A6 -> "A6"
    |`DNAME -> "DNAME"
    |`SINK -> "SINK"
    |`OPT -> "OPT"
    |`APL -> "APL"
    |`DS -> "DS"
    |`SSHFP -> "SSHFP"
    |`IPSECKEY -> "IPSECKEY"
    |`RRSIG -> "RRSIG"
    |`NSEC -> "NSEC"
    |`DNSKEY -> "DNSKEY"
    |`SPF -> "SPF"
    |`UINFO -> "UINFO"
    |`UID -> "UID"
    |`GID -> "GID"
    |`UNSPEC -> "UNSPEC"
    |`AXFR -> "AXFR"
    |`MAILB -> "MAILB"
    |`MAILA -> "MAILA"
    |`ANY -> "ANY"
    |`TA -> "TA"
    |`DLV -> "DLV"
    |`Unknown x -> Printf.sprintf "%d" x

  let qtype_of_string s : qtype_t option = match s with
    |"A" -> Some `A
    |"NS" -> Some `NS
    |"MD" -> Some `MD
    |"MF" -> Some `MF
    |"CNAME" -> Some `CNAME
    |"SOA" -> Some `SOA
    |"MB" -> Some `MB
    |"MG" -> Some `MG
    |"MR" -> Some `MR
    |"NULL" -> Some `NULL
    |"WKS" -> Some `WKS
    |"PTR" -> Some `PTR
    |"HINFO" -> Some `HINFO
    |"MINFO" -> Some `MINFO
    |"MX" -> Some `MX
    |"TXT" -> Some `TXT
    |"RP" -> Some `RP
    |"AFSDB" -> Some `AFSDB
    |"X25" -> Some `X25
    |"ISDN" -> Some `ISDN
    |"RT" -> Some `RT
    |"NSAP" -> Some `NSAP
    |"NSAP_PTR" -> Some `NSAP_PTR
    |"SIG" -> Some `SIG
    |"KEY" -> Some `KEY
    |"PX" -> Some `PX
    |"GPOS" -> Some `GPOS
    |"AAAA" -> Some `AAAA
    |"LOC" -> Some `LOC
    |"NXT" -> Some `NXT
    |"EID" -> Some `EID
    |"NIMLOC" -> Some `NIMLOC
    |"SRV" -> Some `SRV
    |"ATMA" -> Some `ATMA
    |"NAPTR" -> Some `NAPTR
    |"KM" -> Some `KM
    |"CERT" -> Some `CERT
    |"A6" -> Some `A6
    |"DNAME" -> Some `DNAME
    |"SINK" -> Some `SINK
    |"OPT" -> Some `OPT
    |"APL" -> Some `APL
    |"DS" -> Some `DS
    |"SSHFP" -> Some `SSHFP
    |"IPSECKEY" -> Some `IPSECKEY
    |"RRSIG" -> Some `RRSIG
    |"NSEC" -> Some `NSEC
    |"DNSKEY" -> Some `DNSKEY
    |"SPF" -> Some `SPF
    |"UINFO" -> Some `UINFO
    |"UID" -> Some `UID
    |"GID" -> Some `GID
    |"UNSPEC" -> Some `UNSPEC
    |"AXFR" -> Some `AXFR
    |"MAILB" -> Some `MAILB
    |"MAILA" -> Some `MAILA
    |"ANY" -> Some `ANY
    |"TA" -> Some `TA
    |"DLV" -> Some `DLV
    |_ -> None

  class o
    ~qname
    (env:env) =
    object(self)
      method env = env_at env 0 self#sizeof
      method sizeof = 2+2+(Mpl_dns_label.size qname)
      method qname =
        (Mpl_dns_label.to_string_list qname)
      (* set_qname unsupported for now (type custom_type) *)

      method qtype =
        let qtype = Mpl_uint16.to_int (Mpl_uint16.at env ((Mpl_dns_label.size qname))) in
        qtype_unmarshal qtype
      method set_qtype v : unit =
        Mpl_uint16.marshal (env_at env ((Mpl_dns_label.size qname)) 2) (Mpl_uint16.of_int v)

      method qclass =
        let qclass = Mpl_uint16.to_int (Mpl_uint16.at env ((Mpl_dns_label.size qname)+2)) in
        qclass_unmarshal qclass
      method set_qclass v : unit =
        Mpl_uint16.marshal (env_at env ((Mpl_dns_label.size qname)+2) 2) (Mpl_uint16.of_int v)


      method prettyprint =
        let out = prerr_endline in
        out "[ Dns.questions.dns ]";
        out ("  qname = " ^ (Mpl_dns_label.prettyprint self#qname));
        out ("  qtype = " ^ (qtype_to_string self#qtype));
        out ("  qclass = " ^ (qclass_to_string self#qclass));
        ()
    end

  let t
    ~qname
    ~qtype
    ?(qclass=`IN)
    env =
      let qname = (Mpl_dns_label.of_string_list qname) in (* custom *)
      let __qtype = qtype_marshal qtype in
      let __qtype = (Mpl_uint16.of_int __qtype) in
      let __qclass = qclass_marshal qclass in
      let __qclass = (Mpl_uint16.of_int __qclass) in
      let qname = Mpl_dns_label.marshal env qname in
      Mpl_uint16.marshal env __qtype;
      Mpl_uint16.marshal env __qclass;
      new o
      ~qname:qname
      env

  let m (x:(env->o)) env = x env
  let sizeof (x:o) = x#sizeof
  let prettyprint (x:o) = x#prettyprint
  let env (x:o) = x#env
end

module Answers = struct
  class o
    ~(rr:Dns_rr.o)
    (env:env) =
    object(self)
      method env = env_at env 0 self#sizeof
      method sizeof = (Dns_rr.sizeof rr)
      method rr =
        rr
      (* set_rr unsupported for now (type custom_type) *)


      method prettyprint =
        let out = prerr_endline in
        out "[ Dns.answers.dns ]";
        out (" rr = packet(Dns_rr)");
        Dns_rr.prettyprint rr;
        ()
    end

  let t
    ~rr
    env =
      let ___env = env_at env (0) 0 in
      let rr = Dns_rr.m rr ___env in let rr___len = size ___env in
      (* rr: packet(Dns_rr) *)
      skip env rr___len;
      new o
      ~rr:rr
      env

  let m (x:(env->o)) env = x env
  let sizeof (x:o) = x#sizeof
  let prettyprint (x:o) = x#prettyprint
  let env (x:o) = x#env
end

module Authority = struct
  class o
    ~(rr:Dns_rr.o)
    (env:env) =
    object(self)
      method env = env_at env 0 self#sizeof
      method sizeof = (Dns_rr.sizeof rr)
      method rr =
        rr
      (* set_rr unsupported for now (type custom_type) *)


      method prettyprint =
        let out = prerr_endline in
        out "[ Dns.authority.dns ]";
        out (" rr = packet(Dns_rr)");
        Dns_rr.prettyprint rr;
        ()
    end

  let t
    ~rr
    env =
      let ___env = env_at env (0) 0 in
      let rr = Dns_rr.m rr ___env in let rr___len = size ___env in
      (* rr: packet(Dns_rr) *)
      skip env rr___len;
      new o
      ~rr:rr
      env

  let m (x:(env->o)) env = x env
  let sizeof (x:o) = x#sizeof
  let prettyprint (x:o) = x#prettyprint
  let env (x:o) = x#env
end

module Additional = struct
  class o
    ~(rr:Dns_rr.o)
    (env:env) =
    object(self)
      method env = env_at env 0 self#sizeof
      method sizeof = (Dns_rr.sizeof rr)
      method rr =
        rr
      (* set_rr unsupported for now (type custom_type) *)


      method prettyprint =
        let out = prerr_endline in
        out "[ Dns.additional.dns ]";
        out (" rr = packet(Dns_rr)");
        Dns_rr.prettyprint rr;
        ()
    end

  let t
    ~rr
    env =
      let ___env = env_at env (0) 0 in
      let rr = Dns_rr.m rr ___env in let rr___len = size ___env in
      (* rr: packet(Dns_rr) *)
      skip env rr___len;
      new o
      ~rr:rr
      env

  let m (x:(env->o)) env = x env
  let sizeof (x:o) = x#sizeof
  let prettyprint (x:o) = x#prettyprint
  let env (x:o) = x#env
end

class o
  ~(questions:Questions.o array)
  (* mods:[], instr:false *)
  ~(answers:Answers.o array)
  (* mods:[], instr:false *)
  ~(authority:Authority.o array)
  (* mods:[], instr:false *)
  ~(additional:Additional.o array)
  (* mods:[], instr:false *)
  (env:env) =
  object(self)
    method env = env_at env 0 self#sizeof
    method sizeof = (Array.fold_left (fun a x -> Additional.sizeof x + a) 0 self#additional)+(Array.fold_left (fun a x -> Authority.sizeof x + a) 0 self#authority)+(Array.fold_left (fun a x -> Answers.sizeof x + a) 0 self#answers)+(Array.fold_left (fun a x -> Questions.sizeof x + a) 0 self#questions)+2+2+2+2+1+1+2
    method id =
      Mpl_uint16.to_int (Mpl_uint16.at env (0))
    method set_id v : unit =
      Mpl_uint16.marshal (env_at env (0) 2) (Mpl_uint16.of_int v)


    method qr =
      let __bitdummy0 = Mpl_byte.to_int (Mpl_byte.at env (2)) in
      let qr = ((__bitdummy0 lsr 7) lsl 0) in
      qr_unmarshal qr
    (* set_qr unsupported for now (type bit) *)

    method opcode =
      let __bitdummy0 = Mpl_byte.to_int (Mpl_byte.at env (2)) in
      let opcode = (((__bitdummy0 lsr 3) land 15) lsl 0) in
      opcode_unmarshal opcode
    (* set_opcode unsupported for now (type bit) *)

    method authoritative =
      let __bitdummy0 = Mpl_byte.to_int (Mpl_byte.at env (2)) in
      (((__bitdummy0 lsr 2) land 1) lsl 0)
    (* set_authoritative unsupported for now (type bit) *)

    method truncation =
      let __bitdummy0 = Mpl_byte.to_int (Mpl_byte.at env (2)) in
      (((__bitdummy0 lsr 1) land 1) lsl 0)
    (* set_truncation unsupported for now (type bit) *)

    method rd =
      let __bitdummy0 = Mpl_byte.to_int (Mpl_byte.at env (2)) in
      (((__bitdummy0 lsr 0) land 1) lsl 0)
    (* set_rd unsupported for now (type bit) *)


    method ra =
      let __bitdummy0 = Mpl_byte.to_int (Mpl_byte.at env (2)) in
      let __bitdummy1 = Mpl_byte.to_int (Mpl_byte.at env (2+1)) in
      ((__bitdummy1 lsr 7) lsl 0)
    (* set_ra unsupported for now (type bit) *)


    method rcode =
      let __bitdummy1 = Mpl_byte.to_int (Mpl_byte.at env (2+1)) in
      let rcode = (((__bitdummy1 lsr 0) land 15) lsl 0) in
      rcode_unmarshal rcode
    (* set_rcode unsupported for now (type bit) *)





    method questions =
      questions
    (* set_questions unsupported for now (type class) *)

    method answers =
      answers
    (* set_answers unsupported for now (type class) *)

    method authority =
      authority
    (* set_authority unsupported for now (type class) *)

    method additional =
      additional
    (* set_additional unsupported for now (type class) *)


    method prettyprint =
      let out = prerr_endline in
      out "[ Dns.dns ]";
      out ("  id = " ^ (Printf.sprintf "%u" self#id));
      (* __bitdummy0 : bound *)
      out ("  qr = " ^ (qr_to_string self#qr));
      out ("  opcode = " ^ (opcode_to_string self#opcode));
      out ("  authoritative = " ^ (Printf.sprintf "%u" self#authoritative));
      out ("  truncation = " ^ (Printf.sprintf "%u" self#truncation));
      out ("  rd = " ^ (Printf.sprintf "%u" self#rd));
      (* __bitdummy1 : bound *)
      out ("  ra = " ^ (Printf.sprintf "%u" self#ra));
      (* zv : bound *)
      out ("  rcode = " ^ (rcode_to_string self#rcode));
      (* qdcount : bound *)
      (* ancount : bound *)
      (* nscount : bound *)
      (* arcount : bound *)
      out ("  questions = array");
      Array.iter Questions.prettyprint questions;
      out ("  answers = array");
      Array.iter Answers.prettyprint answers;
      out ("  authority = array");
      Array.iter Authority.prettyprint authority;
      out ("  additional = array");
      Array.iter Additional.prettyprint additional;
      ()
  end

let t
  ~id
  ~qr
  ~opcode
  ~authoritative
  ~truncation
  ~rd
  ~ra
  ?(rcode=`NoError)
  ~questions
  ~answers
  ~authority
  ~additional
  env =
    let ___env = env_at env (2+1+1+2+2+2+2) 0 in
    let questions = Array.init (List.length questions) (fun i -> List.nth questions i) in
    let questions = Array.map (fun x ->
      let __e = env_at ___env (curpos ___env) 0 in
      let __r = Questions.m x __e in skip ___env (size __e); __r
    ) questions in
    let questions___len = size ___env in
    let ___env = env_at env (2+1+1+2+2+2+2+questions___len) 0 in
    let answers = Array.init (List.length answers) (fun i -> List.nth answers i) in
    let answers = Array.map (fun x ->
      let __e = env_at ___env (curpos ___env) 0 in
      let __r = Answers.m x __e in skip ___env (size __e); __r
    ) answers in
    let answers___len = size ___env in
    let ___env = env_at env (2+1+1+2+2+2+2+questions___len+answers___len) 0 in
    let authority = Array.init (List.length authority) (fun i -> List.nth authority i) in
    let authority = Array.map (fun x ->
      let __e = env_at ___env (curpos ___env) 0 in
      let __r = Authority.m x __e in skip ___env (size __e); __r
    ) authority in
    let authority___len = size ___env in
    let ___env = env_at env (2+1+1+2+2+2+2+questions___len+answers___len+authority___len) 0 in
    let additional = Array.init (List.length additional) (fun i -> List.nth additional i) in
    let additional = Array.map (fun x ->
      let __e = env_at ___env (curpos ___env) 0 in
      let __r = Additional.m x __e in skip ___env (size __e); __r
    ) additional in
    let additional___len = size ___env in
    let qr = qr_marshal qr in
    let opcode = opcode_marshal opcode in
    if authoritative < 0 || authoritative > 1 then raise (Bad_packet "out of range (0 < authoritative < 1)");
    if truncation < 0 || truncation > 1 then raise (Bad_packet "out of range (0 < truncation < 1)");
    if rd < 0 || rd > 1 then raise (Bad_packet "out of range (0 < rd < 1)");
    if ra < 0 || ra > 1 then raise (Bad_packet "out of range (0 < ra < 1)");
    let zv = 0 in (* const bit *)
    let rcode = rcode_marshal rcode in
    let __bitdummy1 = Mpl_byte.of_int (rcode + (zv lsl 4) + (ra lsl 7)) in
    let __bitdummy0 = Mpl_byte.of_int (rd + (truncation lsl 1) + (authoritative lsl 2) + (opcode lsl 3) + (qr lsl 7)) in
    let qdcount = (Mpl_uint16.of_int (Array.length questions)) in (* bound *)
    let ancount = (Mpl_uint16.of_int (Array.length answers)) in (* bound *)
    let nscount = (Mpl_uint16.of_int (Array.length authority)) in (* bound *)
    let arcount = (Mpl_uint16.of_int (Array.length additional)) in (* bound *)
    let id = (Mpl_uint16.of_int id) in
    (* questions: class(questions) *)
    (* answers: class(answers) *)
    (* authority: class(authority) *)
    (* additional: class(additional) *)
    Mpl_uint16.marshal env id;
    Mpl_byte.marshal env __bitdummy0;
    (* bit qr *)
    (* bit opcode *)
    (* bit authoritative *)
    (* bit truncation *)
    (* bit rd *)
    Mpl_byte.marshal env __bitdummy1;
    (* bit ra *)
    (* bit zv *)
    (* bit rcode *)
    Mpl_uint16.marshal env qdcount;
    Mpl_uint16.marshal env ancount;
    Mpl_uint16.marshal env nscount;
    Mpl_uint16.marshal env arcount;
    skip env questions___len;
    skip env answers___len;
    skip env authority___len;
    skip env additional___len;
    new o
    ~questions:questions
    ~answers:answers
    ~authority:authority
    ~additional:additional
    env

let m (x:(env->o)) env = x env
let sizeof (x:o) = x#sizeof
let prettyprint (x:o) = x#prettyprint
let env (x:o) = x#env

let unmarshal 
  (env:env) : o =
  skip env 2; (* skipped id *)
  skip env 1; (* skipped __bitdummy0 *)
  skip env 1; (* skipped __bitdummy1 *)
  let qdcount = Mpl_uint16.unmarshal env in
  let ancount = Mpl_uint16.unmarshal env in
  let nscount = Mpl_uint16.unmarshal env in
  let arcount = Mpl_uint16.unmarshal env in
  let questions = Array.init (Mpl_uint16.to_int qdcount) (fun _ ->
    let __oldpos = curpos env in
    let qname = Mpl_dns_label.unmarshal env in (* custom *)
    skip env 2; (* skipped qtype *)
    skip env 2; (* skipped qclass *)
    new Questions.o (env_at env __oldpos 0)
    ~qname:qname
  ) in
  let answers = Array.init (Mpl_uint16.to_int ancount) (fun _ ->
    let __oldpos = curpos env in
    let ___rr___env = env_at env (curpos env) 0 in
    let rr = Dns_rr.unmarshal ___rr___env in
    skip env (curpos ___rr___env);
    new Answers.o (env_at env __oldpos 0)
    ~rr:rr
  ) in
  let authority = Array.init (Mpl_uint16.to_int nscount) (fun _ ->
    let __oldpos = curpos env in
    let ___rr___env = env_at env (curpos env) 0 in
    let rr = Dns_rr.unmarshal ___rr___env in
    skip env (curpos ___rr___env);
    new Authority.o (env_at env __oldpos 0)
    ~rr:rr
  ) in
  let additional = Array.init (Mpl_uint16.to_int arcount) (fun _ ->
    let __oldpos = curpos env in
    let ___rr___env = env_at env (curpos env) 0 in
    let rr = Dns_rr.unmarshal ___rr___env in
    skip env (curpos ___rr___env);
    new Additional.o (env_at env __oldpos 0)
    ~rr:rr
  ) in
  new o env
  ~questions:questions
  ~answers:answers
  ~authority:authority
  ~additional:additional
