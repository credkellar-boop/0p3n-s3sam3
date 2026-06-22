# Identity and Access Management (IAM) Hardening Baseline

Essential rules for governing access keys, policies, and privileges within infrastructure environments.

## 1. Root Account Restrictions
* **Never generate access keys for the master root account.** * Enforce hardware multi-factor authentication (MFA) immediately on administrative break-glass accounts.
* Isolate the root account credentials and use dedicated identities for day-to-day administrative functions.

## 2. Implementing IAM Best Practices
* **Least-Privilege Enforcement:** Use customer-managed policies with precise, granular resource specifications instead of broad wildcard permissions (`*`).
* **Incorporate Condition Keys:** Enforce restrictive condition blocks, ensuring administrative actions can only execute from trusted source network blocks:
    ```json
    "Condition": {
        "NotIpAddress": {
            "aws:SourceIp": ["192.0.2.0/24"]
        }
    }
    ```
* **Automated Credential Rotation:** Establish programmatic policies to audit and automatically deprecate user access keys older than 90 days.
* 
