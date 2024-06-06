# データ解析スクリプトテンプレート

## 概要

* このリポジトリは，データ解析スクリプトのテンプレートである
* 1種類の解析につき1つのディレクトリを作成し，その中に解析スクリプトを配置することを想定している
    * 各解析ディレクトリには，その解析スクリプトの実行方法や前提条件等を記述したREADME.mdを配置する
    * 解析ディレクトリ毎に必要な入力データを配置する
        * ただし複数の解析で共通して利用するデータは，common/data/等に配置する(例: 被験者の身長等)
    * 各解析では，解析に必要な変数等を`variables.json`に記述し，解析スクリプトから読み込む
    * また各解析ディレクトリには，解析結果を保存するディレクトリを作成し，その中に解析結果を保存する
    * ディレクトリ間のデータ移動等は手動またはrun_all.ps1等のスクリプトを利用して行うことを想定している
        * 解析スクリプトや実行スクリプトの中でデータの移動等を行うことは避けたい
* 各解析間でデータの受け渡しを容易に行うために，ファイル名やディレクトリ名はfilename.jsonに記述して参照する

## 想定環境

* 解析スクリプト: Python
* 実行スクリプト: PowerShell
* 変数管理等: json

## ファイル構成例

```plaintext
/
│  .gitignore
│  README.md
│  requirements.txt
│  run_all.ps1
│
├─01_analysis1_set_any_name
│  │  analysis1.py
│  │  README.md
│  │  run_analysis1.ps1
│  │  variables.json
│  │
│  ├─input
│  │  │  .gitignore
│  │  │
│  │  └─s1
│  │          s1t1.csv
│  │          s1t2.csv
│  │          s2t1.csv
│  │          s2t2.csv
│  │
│  └─output
│          .gitignore
│          s1.csv
│          s2.csv
│
├─common
│  │  README.md
│  │
│  ├─data
│  │      .gitignore
│  │      README.md
│  │      specific_data.json
│  │
│  └─src
│          common_module_1.py
│          README.md
│
├─config
│      filename.json
│      README.md
│
└─log
    │  README.md
    │
    └─20240606_162637
            all.log
            run_analysis1.log

```

### ファイル・ディレクトリ概要

* `./README.md`: 本ファイル
* `./run_all.ps1`: 全解析を実行するスクリプト
    * 各解析ディレクトリの解析スクリプトを順次実行する
    * 前の解析のoutputを次の解析のinputに移行する処理も行う
* requirements.txt: Pythonライブラリの依存関係を記述したファイル
* .gitignore: Gitの管理対象外とするファイル等を記述したファイル
* common/: 共通データや共通モジュールを配置するディレクトリ
* config/: ファイル名等の設定ファイルを配置するディレクトリ
* 01_analysis1_set_any_name/: 解析スクリプトを配置するディレクトリ
    * ディレクトリ名は任意. 実行順に番号をつけることを推奨
* その他: 各ディレクトリのREADME.mdを参照

## How to Use

### 事前準備

#### 前提

* Pythonがインストールされていること
    * venv等の仮想環境が利用可能であること
* PowerShellが利用可能であること

#### Pythonライブラリのインストール

* 以下，venv等の仮想環境を有効化した状態で実行することが望ましい

```shell
pip install -r requirements.txt
```

### 解析全体を実行する場合

1. 各解析ディレクトリに適切にデータを配置(基本的に実験機器から出力される生データのみを配置)
1. 変数管理ファイル`variables.json`の内容を適切に編集
   1. `variables.json`の詳細は各解析ディレクトリのREADME.mdを参照
1. 解析のルートディレクトリで以下を実行

```shell
./run_all.ps1
```

### 解析スクリプトを個別に実行する場合

1. まずinputディレクトリに適切なデータを配置し，variables.jsonを適切に編集する
1. 解析のルートディレクトリで以下を実行

```shell
./$script_dir/$script_name.ps1
```

* `$script_dir`: 解析スクリプトが配置されているディレクトリ名
* `$script_name`: 解析スクリプトのファイル名
* 例: `./01_analysis1_set_any_name/run_analysis1.ps1`
