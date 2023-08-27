#!/bin/bash
VOL_NAME=personal_backup
DESTINATION=/run/media/${USER}/${VOL_NAME}/$(date +%d-%B-%Y)
EXCLUDE_FILE="backup_ignore"

rsync --archive --verbose --human-readable --progress ${HOME}/Documents ${DESTINATION} --exclude-from ${EXCLUDE_FILE}
rsync --archive --verbose --human-readable --progress ${HOME}/Music ${DESTINATION} --exclude-from ${EXCLUDE_FILE}
rsync --archive --verbose --human-readable --progress ${HOME}/Pictures ${DESTINATION} --exclude-from ${EXCLUDE_FILE}
rsync --archive --verbose --human-readable --progress ${HOME}/Downloads ${DESTINATION} --exclude-from ${EXCLUDE_FILE}

rsync --archive --verbose --human-readable --progress ${HOME}/data ${DESTINATION} --exclude-from ${EXCLUDE_FILE}
rsync --archive --verbose --human-readable --progress ${HOME}/._values ${DESTINATION}/_values --exclude-from ${EXCLUDE_FILE}
