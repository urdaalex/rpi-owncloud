#!/bin/bash

if [ -f "$CRON_ERR_LOGS" ]; then rm "$CRON_ERR_LOGS"; fi

rsync -aq --delete --log-file="$CRON_ERR_LOGS" "$SRC_DIR_PATH" "$DST_DIR_PATH"