# Nmap Scripting Engine (NSE) Reference

Leveraging Nmap's built-in scripts to detect vulnerabilities automatically.

## Vulnerability Scanning
```bash
# Scan a target using all safe vulnerability detection scripts
nmap -sV --script vuln <target>
