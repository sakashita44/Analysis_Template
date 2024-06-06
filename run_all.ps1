# 実行ディレクトリに移動
Set-Location -Path $PSScriptRoot

# Log取得開始
$dateTime = Get-Date -Format 'yyyyMMdd_HHmmss'
Start-Transcript -Path "log/$dateTime/all.log" | Out-Null

## ここに処理を記述 ########################################
# example: 01_analysis1_set_any_name
# Write-Output "INFO: 01_analysis1_set_any_name start"
# ./01_analysis1_set_any_name/run_analysis1.ps1 $dateTime
# Set-Location -Path $PSScriptRoot # ルートディレクトリに戻る
# Write-Output "INFO: 01_analysis1_set_any_name done"



###########################################################

# Log取得終了
Stop-Transcript
