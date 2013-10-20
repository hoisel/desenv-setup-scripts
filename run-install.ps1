param([String]$scriptsFolder)

# Install Chocolatey
$chocolateyInstallScript = Join-Path $scriptsFolder "install-chocolatey.cmd"
& $chocolateyInstallScript


# Framework
cinst ruby -force
cinst python -force
cinst nodejs.install -force

# Visual Studio and extensions
cinst VisualStudio2012Ultimate -force
cinst visualstudio2013Ultimate -force

# Visual studio add-ins and stuff
cinst xUnit.vs2012 -force
cinstm WebEssentials2012 -force
cinstm resharper -force -Version 7.1.3000.2254 # Use only resharper if you want the latests. This is what I have a license for
cinstm typescript -force
cinstm typescript.vs -force
cinstm SpecFlow -force
cinstm resharper-nuget -force # makes resharper invoke NuGet when adding reference to an assembly in a NuGet package
cinstm AnkhSvn -force # Subversion Source Control Provider

# Browsers
cinstm Firefox -force
cinstm GoogleChrome.Canary -force
# Extensions that I liked
cinst EthanBrown.ChromeCanaryDevExtensions -force

# Tools
cinstm nunit -force
cinstm aspnetmvc -force
cinstm fiddler4 -force
cinstm linqpad4 -force
cinstm expresso -force
cinstm curl -force
cinstm MetroStudio -force # Metro Studio - advanced icon editor
cinstm sysinternals -force
cinstm cyg-get -force # utility to install Cygwin packages and dependencies
cinstm winrar -force
cinstm winmerge -force
cinstm windbg -force
cinstm logparser -force

# Utilities
cinstm ccleaner -force
cinstm paint.net -force
cinstm 7zip -force
cinstm tortoisesvn -force -Version 1.7.12 # I need this specific version.. don't ask why
cinstm git -force
cinstm gitextensions -force
cinstm githubforwindows -force
cinstm ilspy -force 
cinstm dotpeek -force
cinstm putty -force

cinstm virtualbox -force
cinstm sourcecodepro -force

cinstm conemu -force # ConEmu, it's better then Console2
cinstm Far -force
cinstm EthanBrown.ConEmuConfig -force # Some config to ConEmu
cinstm filezilla -force

#Cloud Storage
cinstm dropbox -force
cinstm googledrive -force
cinstm skydrive -force

cinstm sublimetext3 -force    # SublimeText
cinst SublimeText3.PackageControl -Pre -force
cinstm TotalCommander -force
cinstm adobereader -force		# Adobe Reader

# IM
cinst skype -force


