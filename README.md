# buoy_loader
Tool that simply curles all available data from https://www.ndbc.noaa.gov/to_station.shtml
The data is stored according to it's type (basic meteo parameters, wave spectra info etc)
folllowing this convention:
<code style="color : name_color">'stdmet'</code>
# {'stdmet': {'name': 'Standard meteoroligcal data', 'url_char': 'h'},
# 'swden': {'name': 'Spectral Wave Density data', 'url_char': 'w'},
# 'swdir': {'name': 'Spectral wave (alpha1) direction data', 'url_char': 'd'},
# 'swdir2': {'name': 'Spectral wave (alpha2) direction data', 'url_char': 'i'},
# 'swr1': {'name': 'Spectral wave (r1) direction data', 'url_char': 'j'},
# 'swr2': {'name': 'Spectral wave (r2) direction data', 'url_char': 'k'}}
If you want to download available ndbc buoy data starting "Before Christ" (BC) till the present time
use 
# ./download.sh
command together with file list (download.ndbc_stdmet) generated automatically through ndbc web site.
