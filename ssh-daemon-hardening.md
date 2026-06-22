# SSH Daemon Configuration Hardening Guide

Production adjustments for `/etc/ssh/sshd_config` to eliminate common authentication vectors.

## Recommended Parameter Updates

Modify your local configuration file to match the following cryptographic and access restrictions:

```ini
# Disable weak, password-based authentication mechanisms
PasswordAuthentication no

# Prevent direct access via the root user account
PermitRootLogin no

# Enforce contemporary, secure protocol configurations
Protocol 2

# Set strict operational limits to drop inactive sessions
MaxAuthTries 3
ClientAliveInterval 300
ClientAliveCountMax 0

# Explicitly limit access privileges to specific organizational accounts
AllowUsers securityadmin automation_svc
AllowUsers securityadmin automation_svc
