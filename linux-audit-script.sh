#!/bin/bash
# Basic Linux security auditing script to discover local system misconfigurations

echo "=== System Audit Initialization ==="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo "==================================="

# 1. Check for Accounts with Superuser Privileges (UID 0)
echo -e "\n[+] Checking for non-standard UID 0 accounts..."
awk -F: '($3 == 0) { print $1 }' /etc/passwd

# 2. Check File System for World-Writable Configurations
echo -e "\n[+] Scanning for world-writable directories/files..."
find / -xdev -type d \( -perm -0002 -a ! -perm -1000 \) 2>/dev/null

# 3. List Currently Listening Network Ports and Associated Processes
echo -e "\n[+] Identifying active network listeners..."
if command -v ss &> /dev/null; then
    ss -tulnp
else
    netstat -tulnp
fi

# 4. Check for Empty Passwords in System shadow file
echo -e "\n[+] Auditing local accounts for empty passwords..."
sudo awk -F: '($2 == "") { print $1 " has NO PASSWORD!" }' /etc/shadow

echo -e "\n=== Audit Routine Concluded ==="
