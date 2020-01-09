#!/bin/bash
set -x

echo -n "Compress backup..."
gzip $BACKUP_TARGET
echo "done"
