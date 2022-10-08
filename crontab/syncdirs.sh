#!/bin/bash

rsync -aq --delete "$SRC_DIR_PATH" "$DST_DIR_PATH" 2>"$CRON_ERR_LOGS"