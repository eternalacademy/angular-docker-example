$Env:COMPOSE_CONVERT_WINDOWS_PATHS=1

$path = ($pwd).path
$path = $path.substring(0,1).tolower() + $path.substring(1)
$path = $path -replace “:”, “”
$path = $path -replace “\\”, “/”
$path = $path.Insert(0, “/”)

$Env:PWD=$path
