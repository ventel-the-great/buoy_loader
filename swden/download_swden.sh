#!/bin/bash

> download.log

# curl --silent https://www.ndbc.noaa.gov/data/historical/stdmet/ | grep -o 'href=".*">' | sed -e "s/href=\"//g" | sed -e "s/\"\>//g" >> download.ndbc_stdmet
# checking each archive stdmet in 

for buoy in $(cat download.ndbc_swden)
do
        curl -L "https://www.ndbc.noaa.gov/data/historical/swden/${buoy}" -o ${buoy} && gzip -d ${buoy}

        if grep -q "Unable to access data" "${buoy}"; then
                echo "Erorr in $buoy" >> download.log
                continue
        fi
done

#for year in $(seq 2005 2006);
#    do	
#	echo "${year} is in process"
#		
#	#curl --retry 3 --retry-delay 2 -s "https://www.ndbc.noaa.gov/data/historical/stdmet/" -o *${year}.txt.gz 
#	curl -O "ftp.ndbc.noaa.gov/data/historical/stdmeet/*${year}.txt.gz"
#	
#		
#	if [ ! -f "*${year}.txt.gz" ]; then
#		echo  "Error in teching file *${year}.txt.gz" >> download.log
#		continue
#	fi
#		
#	if grep -q "Unable to access data" "${buoy}_${year}.txt"; then
#		"Erorr in *{year}.txt.gz" >> download.log
#		rm ${year}.txt.gz
#		continue
#	fi
#		
#done
