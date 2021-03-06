* Path
local Path "https://raw.githubusercontent.com/TWalstrum/ADOThom/main/Graph"

* Thom's default graph settings.
do "`Path'/grapht.ado"

* Thom's default graph scheme.
copy "`Path'/scheme-Thom.scheme" "`: sysdir PERSONAL'", replace
set scheme Thom

* Thom's default font.
graph set window fontface "Roboto"

* Color scheme that matches the p scheme in Thom's graph scheme.
global Color1 " 55  76 155"
global Color2 "164   0  38"
global Color3 "246 127  76"
global Color4 "253 217 140"
global Color5 "110 166 206"
global Color6 "180 119 212"
global Color7 "147 141 210"
global Color8 "255 102   0"
