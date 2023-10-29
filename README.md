# windows-personal-cfg

```PowerShell
# Baixe o JSON do link e armazene-o em uma variável
$jsonData = Invoke-RestMethod -Uri "https://raw.githubusercontent.com/pobruno/windows-personal-cfg/main/winget/export.json"

# Importe o JSON usando o comando winget
winget import -i $jsonData --ignore-unavailable --accept-package-agreements --accept-source-agreements --logs
```

```PowerShell
$jsonData = Invoke-RestMethod -Uri "https://raw.githubusercontent.com/pobruno/windows-personal-cfg/main/winget/export.json"
winget import -i $jsonData --ignore-unavailable --accept-package-agreements --accept-source-agreements --logs
```

