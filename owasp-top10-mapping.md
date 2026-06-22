# Repository Architecture Mapping to the OWASP Top 10

A cross-reference guide connecting the technical reference files inside this repository to the OWASP Top 10 Application Security Risks.

| OWASP Category ID | Risk Profile Title | Relevant Reference File(s) in Repo |
| :--- | :--- | :--- |
| **A01:2021** | Broken Access Control | `cloud-iam-hardening.md`, `api-enumeration-guide.md` |
| **A02:2021** | Cryptographic Failures | `password-storage-best-practices.md`, `secure-logging-config.md` |
| **A03:2021** | Injection | `sql-injection-defense.md`, `sqlmap-cheat.md` |
| **A04:2021** | Insecure Design | `csrf-defense.md`, `xss-prevention-guide.md` |
| **A05:2021** | Security Misconfiguration | `ssh-daemon-hardening.md`, `firewall-hardening-guide.md` |
| **A06:2021** | Vulnerable/Outdated Comp. | `patch-and-vulnerability-management.md`, `nikto-web-scan.md` |
| **A09:2021** | Security Logging/Monitoring Fail. | `secure-logging-config.md`, `soc-detection-rules.md` |