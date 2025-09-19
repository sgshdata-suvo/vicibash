#!/bin/bash

# Run mysqldump command
mysqldump asterisk | gzip > /home/Databasebackup/halder_$(date +\%a-%Y-%m-%d-%H.%M.%S).sql.gz

