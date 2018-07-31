# Configuration options
Enable-RemoteDesktop
Set-WindowsExplorerOptions -enableshowProtectedOSFiles -enableshowFileExtensions

choco install -y chocolatey
choco install -y boxstarter
choco install -y urlrewrite
choco install -y nodejs-lts
choco install -y pester
choco install -y redis-64

# Install .NET Framework 4.7.2 
choco install -y netfx-4.7.2-devpack

# https://chocolatey.org/packages/VisualStudio2017Professional
# choco install visualstudio2017professional --product-key XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
choco install visualstudio2017professional

choco install -y notepadplusplus
choco install -y postman
choco install -y charles4

# LINQpad - This is the most recent 'secure version'. After entering the license key
#  manually, go to 'Help > Check for upgrades'.
#choco install -y linqpad5.anycpu.portable --version 5.28.03-beta --pre

#BT has a license for BC3, so we pin it to keep it from updating to 4.
choco install  beyondcompare --version 3.3.13.18981 -y
choco pin add -n=beyondcompare

#Additional policies
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLinkedConnections" -value 1
New-Item -ItemType directory -Path C:\IISScriptSetupLogs\
New-Item -ItemType file -Path C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
# Enable-WindowsOptionalFeature -Online -FeatureName NetFx3 -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServer -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CommonHttpFeatures -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpErrors -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpRedirect -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationDevelopment -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility45 -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HealthAndDiagnostics -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpLogging -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-LoggingLibraries -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestMonitor -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpTracing -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Security -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-URLAuthorization -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestFiltering -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IPSecurity -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Performance -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionDynamic -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerManagementTools -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementScriptingTools -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IIS6ManagementCompatibility -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Metabase -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HostableWebCore -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CertProvider -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WindowsAuthentication -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DigestAuthentication -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ClientCertificateMappingAuthentication -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-IISCertificateMappingAuthentication -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ODBCLogging -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-StaticContent -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DefaultDocument -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DirectoryBrowsing -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebDAV -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebSockets -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationInit -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45 -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASP -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CGI -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIExtensions -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIFilter -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ServerSideIncludes -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CustomLogging -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-BasicAuthentication -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionStatic -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementConsole -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementService -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WMICompatibility -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-LegacyScripts -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-LegacySnapIn -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-FTPServer -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-FTPSvc -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName IIS-FTPExtensibility -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName WCF-HTTP-Activation -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName WCF-HTTP-Activation45 -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt
Enable-WindowsOptionalFeature -Online -FeatureName TelnetClient -All 2>> C:\IISScriptSetupLogs\EnableWindowsOptionalFeatureErrors.txt

cat $env:LocalAppData\Boxstarter\Boxstarter.log > log.txt


wsl.exe sudo apt-get install redis-server -y
wsl.exe sudo sed -i -e 's/127.0.0.1/0.0.0.0/g' /etc/redis/redis.conf
wsl.exe sudo service redis-server restart
