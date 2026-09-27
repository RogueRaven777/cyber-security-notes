# Block 2: Linux Networking & Packet Analysis

## Overview
This block covers practical packet sniffing, interface management, traffic filtering, and PCAP file manipulation using CLI network monitoring tools like **TShark** and **Tcpdump** on Linux (WSL).

---

## Key Tools & Commands Learned

### 1. TShark (CLI Wireshark)
- **Capture Live DNS Traffic:**
  ```bash
  sudo tshark -i eth0 -Y "dns"
