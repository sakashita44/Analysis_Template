# config

## 概要

* 各解析間でデータの受け渡しを容易に行うための決まり事等を記述する
* 各解析では，このディレクトリ下のファイルを参照してファイル名等を取得する

## 設定ファイル概要

### `filename.json`

* 共通して使用するファイル名やディレクトリ名等を記述する
* 各ファイル名は，`{}`で囲んだ変数を含むことができる
    * 例: `s{NN}t{MM}`: `{NN}`と`{MM}`は被験者番号や試行番号を示す
* ファイル名は名前と拡張子に分けて記述する
    * 拡張子が定まっていない場合は，`""`を記述する
    * 例: `s{NN}t{MM}`の場合，`name`に`s{NN}t{MM}`，`extention`に`""`を記述する
        * デフォルト名なので拡張子はなし

例

```json
{
    "_comment1": "ファイル名の{NN}は被験者番号, {MM}は試行番号を示す",
    "default": {
        "subject_filename": {
            "name": "s{NN}",
            "extention": ""
        },
        "trial_filename": {
            "name": "s{NN}t{MM}",
            "extention": ""
        }
    },
    "raw": {
        "mocap": {
            "name": "mocap{NN}_{MM}",
            "extention": "ts"
        },
        "emg": {
            "name": "emg_{NN}_{MM}",
            "extention": "csv"
        }
    }
}
```
