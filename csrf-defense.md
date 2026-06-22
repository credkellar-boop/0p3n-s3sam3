# Mitigating Cross-Site Request Forgery (CSRF)

Defensive implementations to prevent unauthorized state-changing actions from being executed on behalf of authenticated users.

## 1. Cryptographic Anti-CSRF Tokens
* Ensure the application generates a cryptographically secure, unique, and unpredictable token for each user session.
* Include the token as a hidden field within state-changing forms or inject it inside custom HTTP request headers (`X-CSRF-TOKEN`) for AJAX/API requests.
* Validate the incoming token on the server side against the user's current session pool before executing the transaction.

## 2. Enforcing Defense-in-Depth via SameSite Cookie Attribute
Configure application session tracking identifiers to prevent browsers from automatically attaching credentials to cross-origin requests:

```text
Set-Cookie: session_id=abc123xyz; Secure; HttpOnly; SameSite=Strict