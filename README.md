# SQLDumpScript
A simple script for MySQL database dumping

# Configuration
You can configure the script by editing the variables.
```shell
USERNAME="example" # Username of the database
PASSWORD="secret" # Password for the database
DATABASE_NAME="database" # The database name
DUMP_DIRECTORY="/home/<you_user>/somewhere/" # The directory where you want to put the dumps
DUMP_TARGET=$DUMP_DIRECTORY"dump.sql" # Target for mysqldump file
ZIP_TARGET=$DUMP_DIRECTORY"SQL_DUMP_$(date +"%Y-%m-%d-%T").zip" # Target for the zip file
```
