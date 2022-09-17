#!/bin/sh
log=rclone_google_kameshbook.log
if [ -f "$log" ]; then  
echo "$log exist, deleting it..." && rm $log && echo "Deleted old log";  
fi
touch processing;
rclone -v --log-file=rclone_google_kameshbook.log sync google_kameshbook:cloud/music/ /home/ubuntu/downloads/music/cloud/google_kameshbook
rm processing;
exit 0