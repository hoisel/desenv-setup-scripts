param([String]$scriptsFolder)

# Install Chocolatey
$chocolateyInstallScript = Join-Path $scriptsFolder "install-chocolatey.cmd"
& $chocolateyInstallScript

# Framework
cinst nodejs.install -force

