# Identifying and Verifying Subdomain Takeovers

Guide for locating dangling DNS records pointing to abandoned third-party services.

## 1. Checking CNAME Architecture
Look for subdomains mapping to external providers (AWS S3, GitHub Pages, Heroku) that are no longer actively hosting the targeted asset:
```bash
# Query the DNS configuration of a target subdomain
dig cname dev.target.com
