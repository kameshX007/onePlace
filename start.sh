#!/bin/sh
File=processing
if [ -f "$File" ]; then  
echo "$File exist "
else 
sh sync.sh;  
fi
exit 0