#!/bin/bash

# 1 => $SRC_DIR
# 2 => $DST_DIR
# 3 => $EXCLUDE_FILE
# 4 => $LOG_FILE

dbak () {
  echo "# Duplicity Backup Started on $(date)" >> $4
  duplicity -v8 --no-encryption --asynchronous-upload --exclude-filelist $3 $1 $2 |& tee -a $4
}

dbak /home/harry sftp://arlo:/backups/$(hostname) exclude.txt /home/harry/backup-history.md
