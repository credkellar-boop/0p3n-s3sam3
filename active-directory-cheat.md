# Active Directory Domain Enumeration Baseline

Commands for mapping trust relationships and identifying privileges within a Windows Active Directory domain.

## 1. Native Windows Command-Line Queries
```cmd
rem Find current Domain Controllers handling authentication
nltest /dclist:domain.local

rem List all user accounts registered to the Active Directory domain
net user /domain

rem Locate high-privilege domain administrator identities
net group "Domain Admins" /domain
