# 概要
TUAT，S科用のレポートテンプレートです．

# 使い方
- 次のコマンドでテンプレートをダウンロードする

```
git clone https://github.com/Forest0923/report-template.git report
```

- report/report.texにレポートを記述する
- `make pdf` でPDFファイルを生成する
- `make clean` でdvi, logなどを削除する

# 注意点
## 表紙用のstyファイル
学科指定の表紙をつけるためにtuatReport.styを使用しています．これは[forest0923/tuat-report-sty](https://github.com/Forest0923/tuat-report-sty.git)からダウンロードし，`/usr/local/share/texmf/tex/latex/`などに保存した上で

```
sudo mktexlst
```

を実行して使えるようになります．

## ソースコードのシンタックスハイライト
このテンプレートではmintedを使用してソースコードにシンタックスハイライトをつける方法を採っています．mintedはpythonのパッケージを使用しているため，使用するにあたって

```
pip install pygments
```

を実行しておく必要があります．
