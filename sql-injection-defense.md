# Remediating and Preventing SQL Injection (SQLi)

Defensive programming techniques to ensure databases are protected against manipulation and unauthorized data extraction.

## 1. Primary Defense: Parameterized Queries
Always use prepared statements or parameterized queries rather than concatenating user input directly into SQL strings. This ensures the database interpreter treats input strictly as data, never as executable code.

### Vulnerable Code Concept (Do Not Use)
```text
SELECT * FROM users WHERE username = 'INPUT_USER' AND password = 'INPUT_PASSWORD';
