# 概要
TUAT，S科用のレポートテンプレートです．
# 使い方
- 次のコマンドでテンプレートをダウンロードする
```
git clone https://github.com/Forest0923/report-template.git report
```
- .report/report.texにレポートを記述する
- platexでコンパイルし，dvipdfmxでpdf化する
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
を実行しておく必要があります．また，コンパイル時に
```
platex -shell-escape example.tex
```
のようにオプションをつけないと外部コマンドを使用できないためエラーとなります．
