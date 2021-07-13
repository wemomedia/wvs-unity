FROM mcr.microsoft.com/windows/servercore:1809

#RUN ["powershell", "Install-PackageProvider", "NuGet", "-MinimumVersion 2.8.5.201", "-Force"]
#RUN ["powershell", "Install-Module", "UnitySetup", "-RequiredVersion 5.5.2f1", "-Force"]

RUN ["powershell", "Install-PackageProvider", "NuGet",  "-Force"]
RUN ["powershell", "Install-Module", "UnitySetup", "-Force", "-Confirm:$false"]

RUN ["powershell", "Import-Module", "UnitySetup"]

RUN ["powershell", "Install-UnitySetupInstance", "-Installers (Find-UnitySetupInstaller -Version '5.5.2f1' -Components 'Windows')"]

