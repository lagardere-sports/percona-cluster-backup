#!/bin/bash
if [ -f /backup/before-restore.sh ]; then source /backup/before-restore.sh; fi

echo -n "Restore backup..."
mysql -h $MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASSWORD --database $MYSQL_DB $RESTORE_OPTIONS < $BACKUP_FILE
echo "done"

if [ -f /backup/after-restore.sh ]; then source /backup/after-restore.sh; fi
