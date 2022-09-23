#!/bin/sh
log=rclone_google_kameshbook.log
if [ -f "$log" ]; then  
echo "$log exist, deleting it..." && rm $log && echo "Deleted old log";  
fi
touch processing;
rclone -v --log-file=rclone_google_kameshbook.log sync /home/kamesh/onePlace google_kameshbook:x007/onePlace 
rm processing;
exit 0