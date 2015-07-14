#!/bin/sh

# Configuration
USERNAME="example"
PASSWORD="secret"
DATABASE_NAME="database"
DUMP_DIRECTORY="/home/<you_user>/somewhere/"
DUMP_TARGET=$DUMP_DIRECTORY"dump.sql"
ZIP_TARGET=$DUMP_DIRECTORY"SQL_DUMP_$(date +"%Y-%m-%d-%T").zip"

# Creating a dump of current database
mysqldump -u $USERNAME -p$PASSWORD $DATABASE_NAME > $DUMP_TARGET

# Compression dump and date it
zip $ZIP_TARGET $DUMP_TARGET

# Removing dump
rm -f $DUMP_TARGET
