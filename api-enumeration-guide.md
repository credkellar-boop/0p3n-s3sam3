# REST API Reconnaissance and Enumeration

Standard commands for mapping, testing, and discovering undocumented endpoint structures.

## 1. Directory and Endpoint Brute-Forcing
```bash
# Discover hidden endpoints using a common web wordlist
ffuf -w /usr/share/wordlists/dirb/common.txt -u [http://api.target.com/v1/FUZZ](http://api.target.com/v1/FUZZ) -mc 200,401,403
