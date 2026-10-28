#!/bin/bash
FILE="test-$(date '+%Y-%m-%d_%H-%M').log"
echo "Piping to $FILE"

echo -e "Simply works:\n" > $FILE 2>&1
echo "curl -vs localhost:8080/default" >> $FILE
curl -vs localhost:8080/default >> $FILE 2>&1

echo -e "\n\n\ncurl -vs localhost:8080/working" >> $FILE
curl -vs localhost:8080/working >> $FILE 2>&1

echo -e "\n\n\nDoes not work with default config:" >> $FILE
echo "curl -vs -H 'Expect: 100-continue' localhost:8080/default" >> $FILE 2>&1
curl -vs -H 'Expect: 100-continue' localhost:8080/default >> $FILE 2>&1

echo -e "\n\n\nWorks with 100-continue-filter:" >> $FILE
echo "curl -vs -H 'Expect: 100-continue' localhost:8080/working"  >> $FILE 2>&1
curl -vs -H 'Expect: 100-continue' localhost:8080/working >> $FILE 2>&1
echo "" >> $FILE
