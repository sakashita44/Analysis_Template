# 共通データ，モジュール

* `common/data/`: 共通データ
    * 被験者の身長等，複数の解析で参照するデータを配置する
    * jsonデータベース形式で保存し，後述の共通モジュールを利用して読み込むとよい
        * 例: `specific_data.json`
* `common/src/`: 共通モジュール
    * 複数の解析で共通で利用する関数等を配置する
    * 例: `common_module_1.py`
    * 各モジュールの詳細は`src/README.md`に記述
