Officials Card Generator
====

これは何？
----

アメフトの審判が試合中に使うメモ用紙を PDF で生成するアプリです。
一度に二試合分、事前にわかっている以下の情報を含んだメモ用紙を作ることができます。

* 大会
* 会場
* 日付
* ホーム・ビジターチーム

![sample image](https://storage.googleapis.com/zenn-user-upload/02hndt2ym745st5n8ayl8gywqqij)

開発者向けの情報
----

### 開発環境の構築

* Pull this repository and `bundle install`.
* Install Postgres.
* `foreman start`.
* Go `localhost:3000`

### リリース

Info: This repository uses semantic versioning.

* Check if CI is passed.
* Detect next version number.
* `ghch --format=markdown --next-version={[ NEXT_VERSION }}`
* Create release at GitHub.
* Deploy to Heroku: `git push heroku main`.
