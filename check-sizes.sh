#!/bin/bash
# Check that all HTML files fit in a single TCP packet

MAX_SIZE=1400
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}1PackageWebsite - Size Check${NC}"
echo "================================"
echo -e "Max allowed: ${YELLOW}${MAX_SIZE} bytes${NC}\n"

printf "%-10s %8s %8s %s\n" "VERSION" "RAW" "GZIP" "STATUS"
printf "%-10s %8s %8s %s\n" "-------" "---" "----" "------"

FAILED=0

for dir in v*/; do
    if [ -f "${dir}index.html" ]; then
        VERSION="${dir%/}"
        RAW=$(wc -c < "${dir}index.html" | tr -d ' ')
        GZIP=$(gzip -c "${dir}index.html" | wc -c | tr -d ' ')

        if [ "$RAW" -le "$MAX_SIZE" ]; then
            STATUS="${GREEN}OK${NC}"
        else
            STATUS="${RED}FAIL${NC}"
            FAILED=1
        fi

        printf "%-10s %8d %8d %b\n" "$VERSION" "$RAW" "$GZIP" "$STATUS"
    fi
done

echo ""
if [ $FAILED -eq 0 ]; then
    echo -e "${GREEN}All versions within size limit!${NC}"
    exit 0
else
    echo -e "${RED}Some versions exceed size limit!${NC}"
    exit 1
fi
