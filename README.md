# 0p3n-s3s@m3

A concise, high-impact reference guide and toolkit dedicated to essential cybersecurity, reconnaissance, active penetration testing, and infrastructure hardening.

### Core Architecture
🦀 | 🐍 | 🐋 | ☸️ | ☁️ | 🐧 | 🛡️ | ⚙️ 

---

## What is this?
**0p3n-s3s@m3** is an open-source, centralized knowledge base and operational toolkit built for offensive security auditing and defensive remediation. It bridges the gap between active network reconnaissance, exploitation techniques, and the structural configurations needed to lock down the compromised environments afterward. 

## How this works
The repository acts as a modular "cheat sheet" and execution engine, categorized by operational phases:
1. **Reconnaissance & OSINT:** Workflows for mapping out targets using tools like Maltego, Nmap, and Recon-ng.
2. **Exploitation & Access:** Quick-start resource scripts for Metasploit (`.rc`), automated SQLmap testing, reverse shell one-liners, and Hashcat/John cracking modes.
3. **Defense & Hardening:** Production-ready `.yaml` and `.conf` snippets to secure Kubernetes pods, Docker containers, AWS IAM boundaries, Nginx headers, and SSH daemons.
4. **Automation Pipeline:** Pre-configured GitHub Actions (`.github/workflows`) that automatically lint documentation and scan every commit for leaked API keys or private credentials using Gitleaks.

## Why this is so cool?
It eliminates the division between Red Team and Blue Team resources. It doesn’t just show you how to break an application using a directory traversal or SQL injection—it immediately provides the context-aware output encoding or parameterized query logic needed to patch it. It also features drop-in bash scripts (like the `quick-recon-pipeline.sh`) that chain multiple tools together for rapid execution out of the box.

## What problems this solves?
* **Syntax Amnesia:** Removes the need to memorize complex, highly specific command-line flags for dozens of different tools (e.g., trying to remember exact Nmap NSE commands or Hashcat mode numbers).
* **Context Switching:** Keeps both attack vectors and remediation strategies in one unified, easily searchable workspace.
* **Credential Leaks:** Solves the human error problem by including local Git pre-commit hooks and automated CI/CD pipelines to catch exposed secrets before they ever hit the public branch.
* **Inconsistent Baselines:** Provides standardized, secure-by-default templates for cloud and container infrastructure, preventing configuration drift.

## How to install this?

**1. Clone the repository to your local machine:**
```bash
git clone [https://github.com/credkellar-boop/0p3n-s3s@m3.git](https://github.com/credkellar-boop/0p3n-s3s@m3.git)
cd 0p3n-s3s@m3
