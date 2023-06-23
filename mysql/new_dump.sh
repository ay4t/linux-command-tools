#!/bin/bash

# Generate nama file dengan format yyyymmdd
filename="backup_$(date +%Y%m%d).sql"

# Eksekusi perintah mysqldump
mysqldump -u root sql_cloudtrader23 --default-character-set=utf8 -r "$filename"
