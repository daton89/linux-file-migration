#!/bin/bash - 
#===============================================================================
#
#          FILE: migration.sh
# 
#         USAGE: ./migration.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: daton (tony@jointloop.ovh), 
#  ORGANIZATION: Jointloop
#       CREATED: 21.03.2017 23:35:07
#      REVISION:  1.0
#===============================================================================

set -o nounset                              # Treat unset variables as an error

rsync -auvz --progress jl:/var/www/vhosts /Volumes/OSX\ 1/backup_jointloop_server
rsync -auvz --progress jl:/root/backup-servers /Volumes/OSX\ 1/backup_jointloop_server