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

# Running it with crontab
To run it with crontab you can simply add it by executing the command ```crontab -e```. If you want to execute this script every day at midnight you can add this at the very bottom of the crontab : ```0 0 * * * /bin/sh /path/to/the/script/sql-script.sh > /dev/null 2>&1```
