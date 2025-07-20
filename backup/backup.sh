#!/bin/bash
VOL_NAME=personal_backup
DESTINATION=/run/media/${USER}/${VOL_NAME}/$(date +%d-%B-%Y)
EXCLUDE_FILE="backupignore"

zip -r backup.zip \
    ${HOME}/Documents \
    ${HOME}/Music \
    ${HOME}/Pictures \
    ${HOME}/Downloads \
    ${HOME}/Templates \
    ${HOME}/data \
    ${HOME}/.ssh \
    ${HOME}/._values \
    --exclude @${EXCLUDE_FILE}

rsync --archive --verbose --human-readable --progress backup.zip ${DESTINATION}.zip
echo "Sync... may take a while."
sync
