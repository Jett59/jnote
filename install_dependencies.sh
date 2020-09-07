set -e
set +x

nuget install WiX.Toolset -Version 3.9.1208.0
choco install maven --version 3.6.2
choco install wget