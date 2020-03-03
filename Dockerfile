FROM mcr.microsoft.com/powershell:latest
LABEL maintainer="dpendolino@gmail.com"
# docker run -it mcr.microsoft.com/powershell pwsh -c "Install-Module PSScriptAnalyzer -Force; Invoke-ScriptAnalyzer -ScriptDefinition 'gci'"

RUN pwsh -c "Install-Module PSScriptAnalyzer -Force"

VOLUME /scripts

WORKDIR /scripts

ENTRYPOINT [ "pwsh", "-c", "Invoke-ScriptAnalyzer", "-Path", "script.ps1" ]
