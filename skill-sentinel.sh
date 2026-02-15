#!/bin/bash
# 🛡️ SKILL SENTINEL 🛡️
# Protocol Zero Audit Tool
# Scans SKILL.md files for dangerous patterns (secret access, network exfiltration).

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}[*] Protocol Zero: Skill Sentinel v1.0${NC}"
echo -e "${YELLOW}[*] Target: $1${NC}"

if [ -z "$1" ]; then
    echo "Usage: $0 <path_to_skill_md_or_dir>"
    exit 1
fi

SUSPICIOUS_PATTERNS=(
    "~/.ssh"
    "~/.aws"
    ".env"
    "cat /etc/passwd"
    "curl -X POST"
    "wget --post-data"
    "webhook.site"
    "id_rsa"
    "bash -i"
    "nc -e"
)

scan_file() {
    local file=$1
    local issues=0
    
    echo -e "\nScanning: $file"
    
    for pattern in "${SUSPICIOUS_PATTERNS[@]}"; do
        if grep -q "$pattern" "$file"; then
            echo -e "${RED}[!] DANGER: Found '$pattern' in $file${NC}"
            grep -n -C 1 "$pattern" "$file" | sed 's/^/    /'
            issues=$((issues + 1))
        fi
    done
    
    if [ $issues -eq 0 ]; then
        echo -e "${GREEN}[+] CLEAN: No obvious threats detected.${NC}"
    else
        echo -e "${RED}[-] ALERT: $issues suspicious patterns found.${NC}"
    fi
}

if [ -f "$1" ]; then
    scan_file "$1"
elif [ -d "$1" ]; then
    find "$1" -name "SKILL.md" | while read -r skill_file; do
        scan_file "$skill_file"
    done
else
    echo "Error: Invalid path"
    exit 1
fi
