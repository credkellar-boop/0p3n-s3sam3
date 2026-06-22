# SQLmap Automated DB Testing

Commands to safely test web applications for SQL Injection vulnerabilities.

## 1. Test a URL directly
```bash
sqlmap -u "[http://example.com/item.php?id=5](http://example.com/item.php?id=5)" --banner
