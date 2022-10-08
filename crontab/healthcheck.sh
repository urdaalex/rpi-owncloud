#!/bin/bash

if [! -f "$CRON_ERR_LOGS" ]
then 
    exit 0
fi

if [wc -l "$CRON_ERR_LOGS" -gt 0]
then
    echo "HEALTHCHECK: Error in cron job"
    tail -n 10 "$CRON_ERR_LOGS"
    exit 1
fi

