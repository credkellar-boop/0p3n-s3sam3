# Wireshark Display Filters Reference

Essential display filters for isolating suspicious network behavior and potential traffic exploitation during analysis.

## 1. Tracking Handshake Anomalies
*   `tcp.flags.syn == 1 && tcp.flags.ack == 0` — Filters for pure TCP SYN packets (useful for spotting incoming port scans).
*   `tcp.flags.reset == 1` — Shows dropped or rejected connections (high volumes point to aggressive enumeration).

## 2. Web Traffic Interrogation
*   `http.request.method == "POST"` — Isolates data submission streams, including login attempts and form data.
*   `http.request.uri contains "admin" || http.request.uri contains "login"` — Pinpoints attempts to access restricted directories.

## 3. Core Infrastructure Analysis
*   `dns.flags.response == 1 && dns.type == 1` — Isolates successful IPv4 DNS resolutions to map out outbound traffic destinations.
*   `icmp.type == 8 || icmp.type == 0` — Filters for standard ICMP Echo Requests and Replies (ping sweeps).
*   
