#!/bin/bash

# 1 => $SRC_DIR
# 2 => $DST_DIR
# 3 => $EXCLUDE_FILE
# 4 => $LOG_FILE

dbak () {
  echo "# Duplicity Backup Started on $(date)" >> $4
  duplicity \
    -v8 \
    --no-encryption \
    --asynchronous-upload \
    --full-if-older-than 1M \
    --exclude-filelist $3 \
    $5 \
    $1 $2 \
    |& tee -a $4
}

# dbak \
#   /home/harry \
#   sftp://arlo:/backups/$(hostname) \
#   exclude.txt \
#   /home/harry/backup-history.md

dbak \
  "/home/harry" \
  "/mnt/raidarr/backup" \
  "/home/harry/exclude.txt" \
  "/home/harry/backup-history.md"

AWS_ACCESS_KEY_ID=12SCG0G0MRQP9RWZO56S \
AWS_SECRET_ACCESS_KEY=c7uRNIsKW7ZYK2d6g1YOWrx5q7Dux6wNcTYqosu1 \
dbak \
  "/home/harry" \
  "s3://us-southeast-1.linodeobjects.com/hsaliba-backup" \
  "/home/harry/exclude.txt" \
  "/home/harry/backup-history.md" \
  "--allow-source-mismatch --s3-use-new-style"

echo "# Object Storage Sync Started on $(date)" >> "/home/harry/backup-history.md"
s3cmd -v --exclude-from=/home/harry/Pictures/exclude.txt --delete-removed --force --acl-public sync /home/harry/Pictures/ s3://hsaliba-photo/ |& tee -a "/home/harry/backup-history.md"