# common モジュール

## 利用方法

1. `common/src/`に共通モジュールを配置する
1. 各解析スクリプトから，以下の通り`common/src/`に配置したモジュールをimportして利用する

```python
import sys
import os
# 以下，/(解析のルート)${analysis_name}/${analysis_name}.pyから利用する場合
# 例: /01_analysis1_set_any_name/analysis1.py
# 解析のルートディレクトリのパスをpathに追加
common_path = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
sys.path.append(common_path)

# ルートディレクトリ下のcommon/srcからcommon_module_1をimport
from common.src import common_module_1
```

## 個別モジュールの解説

### common_module_1

* 概要: 何をするモジュールか
* 使い方: どのように使うか

```python
import common_module_1

# 以下，common_module_1内の関数を利用する例
common_module_1.function1()
```

* 引数: どのような引数を受け取るか
