# Flutter 学習用

## Widget of the Week に沿って学ぶ

[リンク](/doc/Widget-of-the-week)

## 環境構築手順

> VSCode 推奨しています。
> VSCode を使用している場合には.vscode/settings.json に記載してある設定が適用されます。

1. fvm を導入してください。
   https://github.com/leoafarias/fvm

1. 下記コマンドを実行してください。
   `fvm install`
   `fvm use 2.2.3`

1. 依存パッケージをインストールしてください。
   `fvm flutter pub get`

1. 拡張機能をインストールしてください。（VSCode 限定）
   コマンドパレットを開いて下記で検索してください。
   `showRecommendedExtensions` => "拡張機能: おすすめの拡張機能を表示"
   ワークスペースの推奨事項を全てインストールしてください。

1. 環境変数の PATH を fvm の default に変更
1. VSCode の場合は、拡張機能の SDK パスを変更
