# buoy_loader
Tool that simply curles all available data from https://www.ndbc.noaa.gov/to_station.shtml
The data is stored according to it's type (basic meteo parameters, wave spectra info etc)
folllowing this convention:
<code style="color : name_color">'stdmet'</code>, <code style="color : name_color">'swden'</code>, <code style="color : name_color">'swdir'</code>,
<code style="color : name_color">'swdir2'</code>, <code style="color : name_color">'swr1'</code>, <code style="color : name_color">'swr2'</code>,
# {'stdmet': {'name': 'Standard meteoroligcal data', 'url_char': 'h'},
# 'swden': {'name': 'Spectral Wave Density data', 'url_char': 'w'},
# 'swdir': {'name': 'Spectral wave (alpha1) direction data', 'url_char': 'd'},
# 'swdir2': {'name': 'Spectral wave (alpha2) direction data', 'url_char': 'i'},
# 'swr1': {'name': 'Spectral wave (r1) direction data', 'url_char': 'j'},
# 'swr2': {'name': 'Spectral wave (r2) direction data', 'url_char': 'k'}}
<table>
  <thead>
    <tr>
      <th style="padding:6px; text-align:left;">Item</th>
      <th style="padding:6px; text-align:left;">Status</th>
      <th style="padding:6px; text-align:left;">Note</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding:6px; background:#ffdddd; color:#800000;">Server A</td>
      <td style="padding:6px; background:#fff2cc; color:#806000;">Warning</td>
      <td style="padding:6px; background:#ddffdd; color:#006400;">Needs review</td>
    </tr>
    <tr>
      <td style="padding:6px; background:#ddeeff; color:#002a66;">Server B</td>
      <td style="padding:6px; background:#ddffdd; color:#006400;">OK</td>
      <td style="padding:6px; background:#ffebcc; color:#804000;">Minor lag</td>
    </tr>
    <tr>
      <td style="padding:6px; background:#f0f0f0; color:#333333;">Server C</td>
      <td style="padding:6px; background:#ffd9e6; color:#800033;">Down</td>
      <td style="padding:6px; background:#e6f7ff; color:#00334d;">Investigating</td>
    </tr>
  </tbody>
</table>

If you want to download available ndbc buoy data starting "Before Christ" (BC) till the present time
use 
# ./download.sh
command together with file list (download.ndbc_stdmet) generated automatically through ndbc web site.
