
---

### `secure-logging-config.md`
```markdown
# Secure Logging and Centralization Architecture

Ensuring log data remains highly available, tamper-resistant, and useful during a security audit or forensic investigation.

## 1. Log Centralization
* Do not store critical logs solely on the local host. Forward logs in real-time to a dedicated, centralized log management server or SIEM infrastructure.
* Restrict read/write access to the log storage server to essential security personnel only.

## 2. Essential Fields to Capture
To maintain visibility during forensic reviews, ensure all system and application logs capture these five core components:

1. **Timestamp:** Highly synchronized time records utilizing Network Time Protocol (NTP).
2. **Source Identifiers:** The originating IP address, hostname, and port number.
3. **User Identity:** The specific user account or service principal performing the action.
4. **Action Details:** The explicit command, request type, or event description executed.