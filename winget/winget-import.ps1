# Define o URL do JSON e o caminho do arquivo temporário
$jsonUrl = "https://raw.githubusercontent.com/pobruno/windows-personal-cfg/main/winget/export.json"
$tempFile = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), "export.json")

# Baixa o JSON para a pasta temporária
Invoke-WebRequest -Uri $jsonUrl -OutFile $tempFile

# Verifica se o arquivo foi baixado com sucesso
if (Test-Path $tempFile) {
    # Executa o comando winget import com o JSON baixado
    $wingetCommand = "winget import -i ""$tempFile"" --ignore-unavailable --accept-package-agreements --accept-source-agreements --logs"
    Invoke-Expression $wingetCommand
} else {
    Write-Host "Falha ao baixar o arquivo JSON."
}
