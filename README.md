---
title : Readme.md
begin : 2023-04-01 
---

Makefile of BSDgames trek for termux
==============

bsdgames の trek をtermux にて動かすための Makefile だよん。

## 導入

ここで使った、BSDgames の trek ソースコードは、つぎの所から拝借しました。

ref. jj1bdx / bsdtrek - github

https://github.com/jj1bdx/bsdtrek

ここからソースコードを一式を取得し、若干の修正を行います。

main.c の中の　146行目付近を

```
    /* Revoke setgid privileges */
//    setgid(getgid());
```

の様にコメントアウトしておきます。

続いて、ここにあるMakefile をソースコードのディレクトリに置いて、make イッパーツ ! で実行ファイル trek が出来上がりますだよ。


## Insider note

- getgid() のコメントアウトは、termux ではユーザーグループなどは設定されていないため、Androidのバージョンによってはエラーになるそうです

- clang の新しいバージョンでは、複数ソースの連携のため、-fcommon オプションが必要だそうです

- clang のARM向けでは、デフォルトでunsigned char になるので、-fsigned-char によってchar 型を signed としてコンパイルする必要があるそうです

  いじょ
