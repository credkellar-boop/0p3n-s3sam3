#!/bin/bash
# A simple bash script to chain Nmap and Nikto for rapid web reconnaissance

if [ -z "$1" ]; then
    echo "Usage: ./quick-recon-pipeline.sh <target-ip-or-domain>"
    exit 1
fi

TARGET=$1
OUTPUT_DIR="./recon_$TARGET"
mkdir -p "$OUTPUT_DIR"

echo "[+] Starting Nmap discovery scan on $TARGET..."
nmap -sS -F --open "$TARGET" -oN "$OUTPUT_DIR/nmap_fast.txt"

# Extract open web ports (80 or 443) to check if we should run Nikto
if grep -qE "80/tcp|443/tcp" "$OUTPUT_DIR/nmap_fast.txt"; then
    echo "[+] Web service detected! Launching Nikto..."
    nikto -h "$TARGET" -output "$OUTPUT_DIR/nikto_web.txt"
else
    echo "[-] No standard web ports (80/443) open. Skipping Nikto."
fi

echo "[+] Recon pipeline complete. Results saved to $OUTPUT_DIR/"
