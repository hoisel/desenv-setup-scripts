# directories and link to scripts archive
$archiveSource = "https://github.com/$user/desenv-setup-scripts/archive/$branch.zip"
$tempDir = Join-Path $env:TEMP "desenv-setup-scripts"

$tempDirExists = Test-Path $tempDir
if(!$tempDirExists) { New-Item -ItemType directory -Path $tempDir }
$archiveDest = Join-Path $tempDir "desenv-setup-scripts.zip"

# download $branch branch to temp folder
Write-Host "Downloading zipped $branch from $archiveSource to $archiveDest ..."
$downloader = new-object System.Net.WebClient
$downloader.DownloadFile($archiveSource, $archiveDest)

# unzip package using Shell Objects for Scripting (http://msdn.microsoft.com/en-us/library/windows/desktop/bb773938(v=vs.85).aspx)
# code snippet is taken from http://blogs.msdn.com/b/daiken/archive/2007/02/12/compress-files-with-windows-powershell-then-package-a-windows-vista-sidebar-gadget.aspx
Write-Host "Extracting archive ..."
$shell = new-object -com shell.application
$zip = $shell.NameSpace($archiveDest)
$extractToFolder = $shell.NameSpace($tempDir)

# parameters for CopyHere 16 here is "Respond with "Yes to All" for any dialog box that is displayed."
# see http://msdn.microsoft.com/en-us/library/windows/desktop/ms723207(v=vs.85).aspx
$extractToFolder.copyHere($zip.Items(), 16)

# start installation process
$scriptsFolder = Join-Path $tempDir "desenv-setup-scripts-$branch"
$run_install_script = Join-Path $scriptsFolder "run-install.ps1"

& $run_install_script $scriptsFolder
