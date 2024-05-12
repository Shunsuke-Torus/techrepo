
ターミナルを開き
`docker-compose up -d`
を入力してください

ダウンロードにしばらく時間がかかります。

終了後､vscodeの拡張機能を開いてください
`Dev Containers`を検索しインストールしてください

左下に緑色の`><`のようなアイコンが表示されます。

コンテナが立ち上がるので
`><`のようなアイコンを押して､
`実行中のコンテナにアタッチ or Attach to Running Container...`
を押す。

初回に`/workspace`をしてください。
vscodeファイルにlatexの設定が入っていて参照するので
そのディレクトリで作業してください

コンテナ内部に入ったので、再び拡張機能を開き
`LaTeX Workshop`と検索してインストールしてください

完成です。

main。texにてタイトルなどを変更してみてください。
ファイルを保存するとmain。pdfが更新されます。

Latexの`ieicej.cls`が見つからない場合は、
もう一度入れなおしてみてください

`wget https://www.ieice.org/ftp/tex/ieicej/LaTeX2e/ieicej3.3N.zip`

`unzip ieicej3.3N.zip -d /workspace/tex/style/`

`rm -r ieicej3.3N.zip`

devcontainerも書きました。活用してください。
`Reopen in Container`をするだけです。