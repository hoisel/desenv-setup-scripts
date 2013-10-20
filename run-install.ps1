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
cinst WebEssentials2012 -force
cinst resharper -force -Version 7.1.3000.2254 # Use only resharper if you want the latests. This is what I have a license for
cinst typescript -force
cinst typescript.vs -force
cinst SpecFlow -force
cinst resharper-nuget -force # makes resharper invoke NuGet when adding reference to an assembly in a NuGet package
cinst AnkhSvn -force # Subversion Source Control Provider

# Browsers
cinst Firefox -force
cinst GoogleChrome.Canary -force
# Extensions that I liked
cinst EthanBrown.ChromeCanaryDevExtensions -force

# Tools
cinst nunit -force
cinst aspnetmvc -force
cinst fiddler4 -force
cinst linqpad4 -force
cinst expresso -force
cinst curl -force
cinst MetroStudio -force # Metro Studio - advanced icon editor
cinst sysinternals -force
cinst cyg-get -force # utility to install Cygwin packages and dependencies
cinst winrar -force
cinst winmerge -force
cinst windbg -force
cinst logparser -force
# Utilities
cinst ccleaner -force
cinst paint.net -force
cinst 7zip -force
cinst tortoisesvn -force -Version 1.7.12 # I need this specific version.. don't ask why
cinst git -force
cinst gitextensions -force
cinst githubforwindows -force
cinst ilspy -force 
cinst dotpeek -force
cinst putty -force

cinst virtualbox -force
cinst sourcecodepro -force

cinst conemu -force # ConEmu, it's better then Console2
cinst Far -force
cinst EthanBrown.ConEmuConfig -force # Some config to ConEmu
cinst filezilla -force

#Cloud Storage
cinst dropbox -force
cinst googledrive -force
cinst skydrive -force

cinst sublimetext3 -force    # SublimeText
cinst SublimeText3.PackageControl -Pre -force
cinst TotalCommander -force
cinst adobereader -force		# Adobe Reader

# IM
cinst skype -force


