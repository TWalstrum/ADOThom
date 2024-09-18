* Path
local Path "https://raw.githubusercontent.com/TWalstrum/ADOThom/main/Graph"

* Thom's default graph settings.
do "`Path'/grapht.ado"

* Thom's default graph scheme.
copy "`Path'/scheme-Thom.scheme" "`: sysdir PERSONAL'", replace
* set scheme Thom

* Thom's default font.
graph set window fontface "Arial"

* Color scheme that matches the p scheme in Thom's graph scheme.
global Color1 "62 137 225"
global Color2 "142 0 0"
global Color3 "131 153 116"
global Color4 "238 169 87"
global Color5 "110 166 206"
global Color6 "180 119 212"
global Color7 "147 141 210"
global Color8 "255 102   0"
