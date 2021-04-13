# report-template

TUAT 情報工学科用のレポートテンプレート．学部用の表紙と修士用の表紙なしの両方に対応．

## Preparation

- System: Ubuntu 20.04 LTS (WSL)
- Install texlive with following command:

```sh
sudo apt install texlive-full
```

- In order to highlight source code with minted, we need to install pygments via pip.

```sh
sudo apt install python3-pip
pip3 install pygments
```

- Create symbolic link

```sh
sudo ln -sf /home/usr/.local/bin/pygmentize /usr/local/bin/pygmentize
```

## Basic usage

- 次のコマンドでテンプレートをダウンロードする

```sh
git clone https://github.com/Forest0923/report-template.git report
```

- report/report.texにレポートを記述する
- style/report パッケージのオプションに `bachelor`, `master` を入れることで表紙を変更できる
- `style/report.sty` で氏名やタイトルを設定する
- `make pdf` でPDFファイルを生成する

## Macros (option)

### Source code

- Usage:

```tex
\begin{code}{c}
#include <stdio.h>
int main(){
  printf("Hello, World!\n");
}
\end{code}
```

or

```tex
\codeFile{c}{path2code}
```

- If you need line numbers:

```tex
\begin{code}[linenos]{c}
#include <stdio.h>
int main(){
  printf("Hello, World!\n");
}
\end{code}
```

or

```tex
\codefromfile[linenos]{c}{path2code}
```

### Figure

- Usage:

```tex
\myfig{path2figure}{caption}{label}
```

or

```tex
\myfig[width=?cm]{path2figure}{caption}{label}
```