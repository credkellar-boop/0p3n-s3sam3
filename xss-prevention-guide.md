
---

### `xss-prevention-guide.md`
```markdown
# Defending Against Cross-Site Scripting (XSS)

Context-aware handling principles to neutralize malicious client-side execution injection vectors.

## 1. Context-Aware Output Encoding
Never echo user input back directly into the browser without transforming special characters into their secure text entity equivalents.
* **HTML Body Context:** Convert `<` to `&lt;`, `>` to `&gt;`, `&` to `&amp;`.
* **HTML Attribute Context:** Force safe alphanumeric constraints or wrap attributes in quotes and encode quotes (`"` to `&quot;`, `'` to `&#x27;`).

## 2. Restrict Cookies via Flags
Configure application session tags with the following attributes to defend cookies from token exfiltration via DOM inspection scripts:
```text
Set-Cookie: session_id=xyz123; Secure; HttpOnly; SameSite=Strict