# _Prefix_Conversion_
[![test](https://github.com/OMame06/Prefix_Conversion/actions/workflows/test.yml/badge.svg)](https://github.com/OMame06/Prefix_Conversion/actions/workflows/test.yml)

## プログラムの目的
2024年時点で適応されているSI接頭辞の変換を行うことができます。

(Q、R、Y、Z、E、P、T、G、M、k、h、da、d、c、m、μ、n、p、f、a、z、y、r、q)
## プログラム概要
git cloneを行った後、以下の手順で実行してください。
```
$ git clone https://github.com/OMame06/Prefix_Conversion.git 
```
```
$ cd Prefix_Conversion
```
### [標準入力]
数値、変換前SI接頭辞、変換後SI接頭辞を入力します。
```
$ echo "数値 変換前SI接頭辞 変換後SI接頭辞" | ./prefix_conversion
```


例：数値[20]のSI接頭辞をミリからセンチに変換する場合
```
$ echo "20 m c" | ./prefix_conversion
```
### [標準出力]
変換後の数値、変換後SI接頭辞を出力します。

例：50テラを出力する場合
```
$ 50 T
```

## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.11

## テスト環境
- Ubuntu 22.04.5 LTS
### テスト内容
- 正常な変換
- 数値以外を入力した場合
- 入力内容が不足した場合
- 空白が無い場合
  
## ライセンス
このソフトウェアパッケージは3条項BSDライセンスの下、再頒布および使用が許可されます。

© 2024 Riku Kinjo
