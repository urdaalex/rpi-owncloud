#!/bin/bash

rsync -aq --ignore-existing --modify-window=1 --delete "$SRC_DIR_PATH" "$DST_DIR_PATH" 2>"$CRON_ERR_LOGS"