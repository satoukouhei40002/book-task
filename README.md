# アプリケーション名

BOOK TASK

# アプリケーション概要

読書を習慣化できるために、投稿機能やタイマー機能を携えたアプリ

# URL

https://book-task-1b8s.onrender.com/users/sign_in

# テスト用アカウント

・　Basic認証パスワード：manage
・　Basic認証ID：1111
・　メールアドレス：aaa@aaa
・　パスワード：aaaaaa

# 利用方法

## 読んだ本の内容を投稿

1.ユーザー新規登録を行う
2.読書を始めるボタンから、タイマーをセットし（6分推奨）本のタイトル、本の内容を入力し登録する
3.投稿できたら、カレンダーに本のタイトルが記載される

# アプリケーションを作成した背景

自分自身が本を読むことは好きだがなかなか習慣化できない課題を抱えていました。課題を分析した結果、
「記録できるものなどで可視化できたら続けれるのではないか」ということが真因であると仮説を立てました。
毎日の記録を管理できることにより習慣化できると思い開発することにした。

#　洗い出した要件
  https://docs.google.com/spreadsheets/d/1f_-279Y8BDm70suQMkSF6JkwCyMcPmQg2RclVe_EHro/edit#gid=982722306　　

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/547e599049d01a77982ee344d1d5e98d.png)](https://gyazo.com/547e599049d01a77982ee344d1d5e98d)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/45c9d4f59f54c7055c18df742a382d3c.png)](https://gyazo.com/45c9d4f59f54c7055c18df742a382d3c)

# 開発環境
・　フロントエンド
・　バックエンド
・　インフラ
・　テスト
・　テキストエディタ
・　タスク管理

# 工夫したポイント
・時間を設定したほうがいいと思いタイマー機能を実装。
・カレンダー機能を使うことで視覚でタスク管理をできるようにした。
