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
      <th style="padding:6px; text-align:left;">Type</th>
      <th style="padding:6px; text-align:left;">Name</th>
      <th style="padding:6px; text-align:left;">Url_char</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding:6px; background:#ffdddd; color:#800000;">stdmet</td>
      <td style="padding:6px; background:#ddeeff; color:#002a66;">Standard meteoroligcal data</td>
      <td style="padding:6px; background:#f0f0f0; color:#333333;">h</td>
      <td style="padding:6px; background:#ffdddd; color:#006400;">swdir2</td>
      <td style="padding:6px; background:#fff2cc; color:#006400;">swr1</td>
      <td style="padding:6px; background:#ddffdd; color:#006400;">swr2</td>
    </tr>
    <tr>
      <td style="padding:6px; background:#fff2cc; color:#806000;">swden</td>
      <td style="padding:6px; background:#ddffdd; color:#006400;">Spectral Wave Density data</td>
      <td style="padding:6px; background:#ffebcc; color:#804000;">Spectral wave (alpha1) direction data</td>
      <td style="padding:6px; background:#ddeeff; color:#002a66;">Spectral wave (alpha2) direction data</td>
      <td style="padding:6px; background:#ddffdd; color:#006400;">Spectral wave (r1) direction data</td>
      <td style="padding:6px; background:#ffebcc; color:#804000;">Spectral wave (r2) direction data</td>
    </tr>
    <tr>

      <td style="padding:6px; background:#ffd9e6; color:#800033;">w</td>
      <td style="padding:6px; background:#e6f7ff; color:#00334d;">d</td>
      <td style="padding:6px; background:#f0f0f0; color:#333333;">i</td>
      <td style="padding:6px; background:#ffd9e6; color:#800033;">j</td>
      <td style="padding:6px; background:#e6f7ff; color:#00334d;">k</td>
    </tr>
  </tbody>
</table>

If you want to download available ndbc buoy data starting "Before Christ" (BC) till the present time
use 
# ./download.sh
command together with file list (download.ndbc_stdmet) generated automatically through ndbc web site.
