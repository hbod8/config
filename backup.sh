#!/bin/bash

# Basic backup
LOCAL_DIR=/home/harry
REMOTE_DIR=backups/$(hostname)
REMOTE_HOST=arlo
LOG_FILE=/home/harry/backup-history.md
EXCLUDE_FILE=exclude.txt

# Local Network backup
LAN_LOCAL_DIR=/home/harry
LAN_REMOTE_DIR=/mnt/c/backups/$(hostname)
LAN_REMOTE_HOST=pointwhite
LAN_LOG_FILE=$LOG_FILE
LAN_EXCLUDE_FILE=exclude.txt

# Photo Upload
PHOTO_LOCAL_DIR=/home/harry/Pictures
PHOTO_REMOTE_DIR=/var/www/
PHOTO_REMOTE_HOST=arlo
PHOTO_LOG_FILE=$LOG_FILE
PHOTO_EXCLUDE_FILE='Pictures/exclude.txt'

# 1 => $LOCAL_DIR
# 2 => $REMOTE_HOST
# 3 => $REMOTE_DIR
# 4 => $EXCLUDE_FILE
# 5 => $LOG_FILE

oneshot () {
  echo "# Oneshot Backup Started on $(date)" >> $5
  rsync -azvyi --update --delete-after --delete-excluded --force --exclude-from=$4 $1 $2:$3 |& tee -a $5
}

# @TODO Doesn't work
incremental () {
  echo "# Incremental Backup Started on $(date)" >> $5
  LABEL=$(date +%m-%d-%y)
  LAST_BACKUP=$(ssh $2 "ls $3" | sort -r -k1.6 -k1 -k1.4 | head -1)
  rsync -av --update --link-dest "$2:$3/$LAST_BACKUP" --delete-after --delete-excluded --exclude-from=$4 "$1" "$2:$3/$LABEL" |& tee -a $5
}

dbak () {
  echo "# Duplicity Backup Started on $(date)" >> $5
  duplicity -v8 --no-encryption --asynchronous-upload --exclude-filelist $4 $1 sftp://$2/$3 |& tee -a $5
}

dbak $LAN_LOCAL_DIR $LAN_REMOTE_HOST $LAN_REMOTE_DIR $LAN_EXCLUDE_FILE $LAN_LOG_FILE
dbak $LOCAL_DIR $REMOTE_HOST $REMOTE_DIR $EXCLUDE_FILE $LOG_FILE
oneshot $PHOTO_LOCAL_DIR $PHOTO_REMOTE_HOST $PHOTO_REMOTE_DIR $PHOTO_EXCLUDE_FILE $PHOTO_LOG_FILE
