#!/bin/bash
# Local Git Pre-Commit Hook to catch exposed high-entropy secrets and private keys
# Installation: Copy this script into your local workspace at `.git/hooks/pre-commit`

STAGE_FILES=$(git diff --cached --name-only)
ERR_FOUND=0

# Regular expressions checking for high-risk strings
PK_PATTERN="-----BEGIN[ A-Z0-9_-]\+PRIVATE KEY-----"
AWS_PATTERN="(?i)(A3T[A-Z0-9]|AKIA|AGPA|AIDA|AROA|AIPA|ANPA|ANVA|ASIA)[A-Z0-9]{16}"

for FILE in $STAGE_FILES; do
    # Check for hardcoded Private Cryptographic Keys
    if git diff --cached "$FILE" | grep -q "$PK_PATTERN"; then
        echo "[-] CRITICAL ERROR: Found a potential unencrypted Private Key inside: $FILE"
        ERR_FOUND=1
    fi

    # Check for programmatic Cloud Access Keys
    if git diff --cached "$FILE" | grep -qE "$AWS_PATTERN"; then
        echo "[-] CRITICAL ERROR: Found an exposed AWS Identity Access Key inside: $FILE"
        ERR_FOUND=1
    fi
done

if [ $ERR_FOUND -ne 0 ]; then
    echo "[!] Commit process terminated automatically. Remove secrets before committing."
    exit 1
fi

exit 0
