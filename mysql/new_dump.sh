#!/bin/bash

# Generate nama file dengan format yyyymmdd
filename="db_dump_$(date +%Y%m%d).sql"

# Eksekusi perintah mariadb-dump --skip-lock-tables --routines --add-drop-table --disable-keys --extended-insert --events --comments -u root --host=localhost --port=3306 binary_v2
mariadb-dump -u root -p binary_v2 --default-character-set=utf8 --skip-lock-tables --routines --add-drop-table --disable-keys --extended-insert --events --comments -r "$filename"

# remove definer
sed -i 's/DEFINER=[^*]*\*/\*/g' "$filename"
