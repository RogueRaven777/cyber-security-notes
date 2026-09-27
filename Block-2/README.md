# Block 2: Linux Networking & Packet Analysis

## Overview
This block covers practical packet sniffing, interface management, traffic filtering, and PCAP file manipulation using CLI network monitoring tools like **TShark** and **Tcpdump** on Linux (WSL).

---

## Key Tools & Commands Learned

### 1. TShark (CLI Wireshark)
- **Capture Live DNS Traffic:**
  ```bash
  sudo tshark -i eth0 -Y "dns"

---

## Lab 1: DNS Query & Response Analysis
- **Objective:** Capture and analyze DNS queries and responses using tshark and nslookup.
- **Commands Used:**
  sudo tshark -i eth0 -Y "dns"
  nslookup google.com
- **Observation:** Captured A record lookup requests and response packets.

---

## Lab 2: DNS MX Record Lookup & Packet Filtering
- **Objective:** Filter specific DNS query types (MX records) using tshark filter.
- **Commands Used:**
  sudo tshark -i eth0 -Y "dns.qry.type == 15"
  nslookup -type=mx google.com
- **Observation:** Successfully filtered and captured MX record lookup packets (Type 15).

---

## Lab 3: Reverse DNS Lookup (PTR Query)
- **Objective:** Capture reverse DNS (PTR) query traffic.
- **Commands Used:**
  sudo tshark -i eth0 -Y "dns.flags.response == 0"
  nslookup 8.8.8.8
- **Observation:** Observed domain name resolution from IP address 8.8.8.8.

---

## Lab 4: DNS over TCP Transport
- **Objective:** Analyze DNS queries explicitly sent over TCP instead of UDP.
- **Commands Used:**
  sudo tshark -i eth0 -Y "dns and (tcp or udp)"
  nslookup -vc google.com
- **Observation:** Verified DNS resolution behavior over TCP protocol.

---

## Lab 5: Saving DNS Traffic to PCAP File
- **Objective:** Capture raw DNS packets and save them directly to a .pcap file.
- **Commands Used:**
  sudo tshark -i eth0 -f "udp port 53" -w dns_traffic.pcap -c 10
  nslookup github.com
- **Observation:** Successfully saved 10 DNS packets into dns_traffic.pcap for offline analysis.
