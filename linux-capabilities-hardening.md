# Auditing and Restricting Linux Kernel Process Capabilities

How to discover and eliminate overly permissive file capabilities that bypass standard root account checks.

## 1. The Risk of Ambient SUID / Capabilities

Linux splits root-level privileges into distinct capabilities (`CAP_SYS_ADMIN`, `CAP_NET_RAW`, etc.). If an executable is granted unnecessary capabilities, attackers can leverage it for privilege escalation.

## 2. Auditing File Capabilities

```bash
# Scan the file system recursively to catalog binary files with assigned privileges
getcap -r / 2>/dev/null
