#!/bin/bash

LOG_FILE="/var/log/syslog"
ALERT_FILE="alerts.log"

echo "Monitoring $LOG_FILE ..."

tail -Fn0 $LOG_FILE | while read line
do
    if echo "$line" | grep -Ei "error|failed|critical" > /dev/null
    then
        echo "🚨 ALERT DETECTED"
        echo "$line"
        echo "$(date) : $line" >> $ALERT_FILE
    fi
done
