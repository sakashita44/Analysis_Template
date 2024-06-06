# 引数を取得
param(
    [string]$arg1
)

# arg1が空の場合，yyyyMMdd_HHmmssを指定
if ([string]::IsNullOrEmpty($arg1)) {
    $arg1 = Get-Date -Format 'yyyyMMdd_HHmmss'
}

# 実行ディレクトリに移動
Set-Location -Path $PSScriptRoot

# ファイル名(拡張子を除く)を取得
$scriptName = $MyInvocation.MyCommand.Name.Replace(".ps1", "")

# Log取得開始
Start-Transcript -Path "../../log/$arg1/$scriptName.log"

## ここに処理を記述 ########################################
# python等の出力を表示させるには，Out-Defaultを使用する必要がある
py analysis1.py | Out-Default;

###########################################################

# Log取得終了
Stop-Transcript
