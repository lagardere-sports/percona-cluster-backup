#!/bin/bash
if [ -f /backup/restore.sh ]; then source /backup/restore.sh; fi

echo -n "Restore backup..."
mysql -h $MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASSWORD --database $MYSQL_DB < $BACKUP_FILE
echo "done"
