* Path
local Path "https://raw.githubusercontent.com/TWalstrum/ADOThom/main/Graph"

* Thom's default graph settings.
do "`Path'/grapht.ado"

* Thom's default graph scheme.
copy "`Path'/scheme-Thom.scheme" "`: sysdir PERSONAL'", replace
set scheme Thom
