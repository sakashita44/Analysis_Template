# common データ

* 解析スクリプトにより自動生成するため，バージョン管理をしない

## 個別のデータファイルについて

### specific_data.json

* 複数の解析スクリプトで共通して使用するデータを格納するデータベースのような役割
* gitで管理していないためスクリプト等から生成する

内容例

```json
[
    {
        "subject_id": 1,
        "subject_mass_kg": 60.0,
        "subject_height_m": 1.7,
        "trials": [
            {
                "trial_id": 1,
                "trial_date": "2021-01-01",
                "trial_condition": true
            },
            {
                "trial_id": 2,
                "trial_date": "2021-01-02",
                "trial_condition": false
            }
        ]
    },
    {
        "subject_id": 2,
        "subject_mass_kg": 70.0,
        "subject_height_m": 1.8,
        "trials": [
            {
                "trial_id": 1,
                "trial_date": "2021-01-01",
                "trial_condition": true
            },
            {
                "trial_id": 2,
                "trial_date": "2021-01-02",
                "trial_condition": false
            }
        ]
    }
]
```
