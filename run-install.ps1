param([String]$scriptsFolder)

# Install Chocolatey
$chocolateyInstallScript = Join-Path $scriptsFolder "install-chocolatey.cmd"
& $chocolateyInstallScript


# Framework
cinstm ruby
cinstm python
cinstm nodejs.install

# Visual Studio and extensions
cinstm VisualStudio2012Ultimate
cinstm visualstudio2013Ultimate

# Visual studio add-ins and stuff
cinstm xUnit.vs2012
cinstm WebEssentials2012
cinstm resharper -Version 7.1.3000.2254 # Use only resharper if you want the latests. This is what I have a license for
cinstm typescript
cinstm typescript.vs
cinstm SpecFlow
cinstm resharper-nuget # makes resharper invoke NuGet when adding reference to an assembly in a NuGet package
cinstm AnkhSvn # Subversion Source Control Provider

# Browsers
cinstm Firefox
cinstm GoogleChrome.Canary
# Extensions that I liked
cinst EthanBrown.ChromeCanaryDevExtensions

# Tools
cinstm nunit
cinstm aspnetmvc
cinstm fiddler4
cinstm linqpad4
cinstm expresso
cinstm curl
cinstm MetroStudio # Metro Studio - advanced icon editor
cinstm sysinternals
cinstm cyg-get # utility to install Cygwin packages and dependencies
cinstm winrar
cinstm winmerge
cinstm windbg
cinstm logparser

# Utilities
cinstm ccleaner
cinstm paint.net
cinstm 7zip
cinstm tortoisesvn -Version 1.7.12 # I need this specific version.. don't ask why
cinstm git
cinstm gitextensions
cinstm githubforwindows
cinstm ilspy
cinstm dotpeek
cinstm putty

cinstm virtualbox
cinstm sourcecodepro

cinstm conemu # ConEmu, it's better then Console2
cinstm Far
cinstm EthanBrown.ConEmuConfig # Some config to ConEmu
cinstm filezilla

#Cloud Storage
cinstm dropbox
cinstm googledrive
cinstm skydrive

cinstm sublimetext3    # SublimeText
cinst SublimeText3.PackageControl -Pre
cinstm TotalCommander
cinstm adobereader		# Adobe Reader

# IM
cinstm skype


