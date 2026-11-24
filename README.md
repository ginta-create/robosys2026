# unpushコマンド
[![test](https://github.com/ginta-create/robosys2026/actions/workflows/test.yml/badge.svg)](https://github.com/ginta-create/robosys2026/actions/workflows/test.yml)

## 概要
指定したファイルが現在のリポジトリにおいて、以下のどの状態にあるかを自動で判定してくれるコマンド。
- まだコミットされていない。
- コミット済みだがまだGitHubにプッシュされていない。
- すでにGitHubにプッシュ済みである。

## 使用準備
- リポジトリをクローン
```bash
git clone https://github.com/ginta-create/robosys2026.git
```
- ディレクトリをrobosys2026に移動
```bash
cd robosys2026
```
- 実行権限をつける
```bash
chmod +x unpush
```

## 使用方法
- 例　plusというファイルを確認したいとき
```bash
$./unpush plus
GitHubにpush済みです。
```
 
## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.10〜3.14

## テスト環境
- Ubuntu 24.04 LTS

## ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- © 2026 Ginta Uchiyama

