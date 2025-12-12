#!/bin/bash
# curl --silent https://www.ndbc.noaa.gov/data/historical/stdmet/ | grep -o 'href=".*">' | sed -e "s/href=\"//g" | sed -e "s/\"\>//g" >> download.ndbc_stdmet_test
# checking each archive, e.g. instead of 'stdmet', get 'swden'
# {'stdmet': {'name': 'Standard meteoroligcal data', 'url_char': 'h'},
#   'swden': {'name': 'Spectral Wave Density data', 'url_char': 'w'},
#    'swdir': {'name': 'Spectral wave (alpha1) direction data', 'url_char': 'd'},
#     'swdir2': {'name': 'Spectral wave (alpha2) direction data', 'url_char': 'i'},
#      'swr1': {'name': 'Spectral wave (r1) direction data', 'url_char': 'j'},
#       'swr2': {'name': 'Spectral wave (r2) direction data', 'url_char': 'k'}}
# station_metadata can be accessed via: 
# wget https://www.ndbc.noaa.gov/data/stations/station_table.txt  
> download.log

# curl --silent https://www.ndbc.noaa.gov/data/historical/stdmet/ | grep -o 'href=".*">' | sed -e "s/href=\"//g" | sed -e "s/\"\>//g" >> download.ndbc_stdmet
# checking each archive stdmet in 

for buoy in $(cat download.ndbc_stdmet)
do
        curl -L "https://www.ndbc.noaa.gov/data/historical/stdmet/${buoy}" -o ${buoy} && gzip -d ${buoy}

        if grep -q "Unable to access data" "${buoy}"; then
                echo "Erorr in $buoy" >> download.log
                continue
        fi
done

