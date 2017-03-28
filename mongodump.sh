#!/bin/bash - 
#===============================================================================
#
#          FILE: mongodump.sh
# 
#         USAGE: ./mongodump.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: daton (@daton89), tony@jointloop.ovh
#  ORGANIZATION: Jointloop
#       CREATED: 28.03.2017 23:12:33
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

if [[ $# -eq 0 ]]
then
    echo "No arguments are supplied"
    echo "Provide hostname as first parameter"
    echo "example: "
    echo "=> ./mongodump.sh root@jointloop.ovh"
else
    echo "Backing up to server: $1"
    NOW=$(date +"%d-%m-%Y_%H-%M")
    DIR=/root/mongodump/$NOW
    SRV=$1

    mkdir $DIR
    mongodump --host localhost --port 27017 --out $DIR
    ssh $SRV "mkdir /root/backup-servers/ssml/mongodump/$NOW"
    scp -r -C $DIR $SRV:/root/backup-servers/ssml/mongodump/$NOW)
fi



