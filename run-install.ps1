param([String]$scriptsFolder)

# Install Chocolatey
$chocolateyInstallScript = Join-Path $scriptsFolder "install-chocolatey.cmd"
& $chocolateyInstallScript

# Framework
cinst nodejs.install -force

# Browsers
cinst Firefox -force
cinst GoogleChrome.Canary -force

# Utilitários
cinst linqpad4 -force
cinst NugetPackageExplorer -force
cinst ccleaner -force
cinst 7zip -force
cinst git -force
cinst gitextensions -force
cinst githubforwindows
cinst ilspy -force 
cinst dotpeek -force
#cinst sourcecodepro -force
cinst filezilla -force
cinst adobereader -force		
cinst notepadplusplus -force
cinst FoxitReader -force
cinst TeraCopy -force
cinst treesizefree -force
cinst teamviewer -force
cinst speccy -force
cinst beyondcompare -force

# IM
cinst skype -force
cinst pidgin -force

#
cinst k-litecodecpackfull -force