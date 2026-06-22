# Incident Response Initial Actions Checklist

A foundational framework for handling a suspected security incident or unauthorized system access.

## 1. Identification & Verification
*   [ ] Verify the alerting source (IDS/IPS, SIEM, or user report).
*   [ ] Identify the affected assets, IP addresses, and user accounts.
*   [ ] Determine the potential scope and severity classification of the incident.

## 2. Containment Strategies
*   [ ] **Short-Term Containment:** Isolate affected systems from the local network (disconnect network cables or isolate via VLAN) to prevent lateral movement.
*   [ ] Avoid powering down machines immediately to preserve volatile memory (RAM) for forensic analysis.
*   [ ] Block malicious IP addresses or domains at the perimeter firewall.

## 3. Eradication & Recovery
*   [ ] Identify and remove the root cause of the compromise (e.g., delete malware components, close exposed ports).
*   [ ] Restore affected systems from verified, clean backups.
*   [ ] Force a global password reset for all compromised or high-privilege accounts.
*   [ ] 
