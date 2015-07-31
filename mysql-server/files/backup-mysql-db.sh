#!/bin/bash

# Script:      backup-mysql.sh
# Description: Creates the specified database dump in gzip. If no file name is
#	specified, defines one based on host, database, parameters and time.
#
#	Argument documentation can be seen un usage function.
# Changelog:
#	1.0 - pablo - Primera versión del script distribuída.


TIME_SUFFIX=$(date +%Y%m%d-%H%M%S)

# Define default values
HOST=$HOSTNAME
CONTENT=all

# Show usage and exit
usage() {
	echo "Usage: $0 [-u <mysql_user>] [-d <database>] [-h <host>]"
	echo "          [-f <backup_file_name>] [-t <tag>] [-c (*all*|data|schema)]"
	echo ""
	echo "-u: Database connection user."
	echo "-d: Database to dump."
	echo "-h: Database host. 'localhost' by default."
	echo "-f: Backup file name. If not defined, generates one by default."
	echo "-t: Tags to add to file name. Only used when backup file name not"
	echo "    specified."
	echo "-c: Context to dump. 'all' by default."
	exit 1
}

# Parse command arguments
while getopts u:d:h:f:t:c: arg; do
	case "${arg}" in
		u)
			USER=${OPTARG}
			;;
		d)
			DATABASE=${OPTARG}
			;;
		h)
			HOST=${OPTARG}
			;;
		f)
			BACKUP_FILE=${OPTARG}
			;;
		t)
			TAG=${OPTARG}
			;;
		c)
			CONTENT=${OPTARG}
			;;
		*)
			echo ""
			usage
			;;
	esac
done

# Prompt for user if not defined
if [ -z $USER ]; then
	read -p "User: " USER
fi

# Prompt for database if not defined
if [ -z $DATABASE ]; then
	read -p "Database: " DATABASE
fi

# Set additional arguments depending on the content specified
case "${CONTENT}" in
	all)
		ARGS="--routines --complete-insert"
		;;
	data)
		ARGS="--no-create-info --no-create-db --complete-insert"
		;;
	schema)
		ARGS="--no-data"
		;;
	*)
		echo "ERROR: Invalid content type ${CONTENT}"
		echo ""
		usage
		;;
esac

# Create backup file name if not define
if [ -z $BACKUP_FILE ]; then
	if [ -z $TAG ]; then
		BACKUP_FILE=backup-${DATABASE}-${HOST}-${TIME_SUFFIX}.sql.gz
	else
		BACKUP_FILE=backup-${DATABASE}-${HOST}-${TIME_SUFFIX}-${TAG}.sql.gz
	fi
fi

# Run mysqldump
mysqldump --user=$USER --password --host=$HOST --databases $DATABASE \
		--single-transaction $ARGS | gzip --best > $BACKUP_FILE

if [ ${PIPESTATUS[0]} -ne 0 ]; then
	echo "Error executing mysqldump"
	rm $BACKUP_FILE > /dev/null 2>&1
	exit 2
fi
