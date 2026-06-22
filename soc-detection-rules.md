# Detection Logic and SIEM Alert Blueprints

Defensive monitoring logic used to identify unauthorized scanning, reconnaissance, or exploitation patterns in system environments.

## 1. Web Application Directory Traversal Detectors
* **Log Source:** Web Server Access Logs (Apache, Nginx, IIS)
* **Pattern to Monitor:** Look for excessive `404 Not Found` errors from a single source IP within a short window, or patterns containing trailing directory sequences (e.g., `../`, `%2e%2e%2f`, `/etc/passwd`).

## 2. Host Authentication Brute-Force Detectors
* **Log Source:** Linux Security Logs (`/var/log/auth.log`) or Windows Event Logs (Event ID 4625 - Failed Logon)
* **Condition:** Trigger an alert if an endpoint records more than 20 failed login attempts within 60 seconds followed by a single successful login.
