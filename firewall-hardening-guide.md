# Perimeter Firewall Hardening Principles

Best practices for configuring network firewalls to minimize exposure to external network scanning and enumeration.

## 1. Default Deny Posture
*   Implement a strict **Default Deny** rule for both inbound and outbound traffic. Only explicitly permitted traffic should be allowed through the network boundaries.

## 2. Port Scan Mitigation
*   Configure rate-limiting features to drop traffic from external IPs that generate high volumes of connection requests across multiple ports in a short timeframe.
*   Disable responses to ICMP echo requests (pings) on external interfaces if network architecture allows, reducing the visibility of live hosts to basic discovery scans.

## 3. Strict Inbound Rules Example
| Source | Destination | Protocol | Port | Action | Purpose |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Any | Web_DMZ | TCP | 80, 443 | ALLOW | Public Web Traffic |
| Corporate_IP | Management_VLAN | TCP | 22 | ALLOW | Secure Remote Admin |
| Any | Any | Any | Any | DENY | Catch-All Block Rule |
