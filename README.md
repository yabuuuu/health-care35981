# アプリ名

Health Care

# 概要

一人一人個人で自分の健康を管理していく上で、管理しやすいようなアプリケーションを目指しました。

# 本番環境

 http://35.75.182.42/

 ログイン情報（テスト用）
- E-mail : 123456@g
- パスワード : 123456a

# 制作背景（意図）

自分自身の健康を管理する目的で作成しました。
情報は至る所に溢れているため、知らなければ調べれば良いのですが、情報が一つにまとまっていることで管理しやすくなると考えました。
また、健康状態に不安がある場合など、入力した個人のデータを元に病院や産業医からの生活指導などにも活用できると考えました。

# DEMO

### トップページ
### 新規登録ページ
### マイページ

# 工夫したポイント

30代以降の幅広い世代の人が使用しやすいように、見やすい画面になるように工夫しました。
得にマイページでは、カレンダーやグラフなどを使用してひと目でデータをわかりやすくしました。

# 使用技術(開発環境)

## バックエンド
Ruby, Ruby on Rails

## フロントエンド
HTML, CSS, SCSS, JavaScript, jQuery, Ajax

## データベース
MySQL

## インフラ
AWS(EC2)

## Webサーバー（本番環境）
nginx

## アプリケーションサーバー（本番環境）
unicorn

## ソース管理
Github, GithubDesktop

## テスト
Rspec

## エディタ
VSCode

# テーブル設計

## users テーブル

| Column            | Type   | Options                  |
| ----------------- | ------ |------------------------- |
| nickname          | string | null: false              |
| email             | string | null: false, unique: true|
| encrypted_password| string | null: false              |
| profile           | text   |                          |
| birthday          | date   | null: false              |

### Association

- has_many :body_conditions
- has_one :weight_goal


## body_conditions テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| data_content_id | integer    | null: false                    |
| start_time      | date       | null: false                    |
| body_data       | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :weight_goal
- belongs_to :bodyfat_goal
- belongs_to :weight_goal


## weight_goals テーブル

| Column             | Type     | Options                        |
| ------------------ | -------- | ------------------------------ |
| goal               | integer  | null: false                    |
| period             | date     |                                |
| user               | reference| null: false, foreign_key: true |

### Association
- belongs_to :user


## bodyfat_goals テーブル

| Column             | Type     | Options                        |
| ------------------ | -------- | ------------------------------ |
| goal               | integer  | null: false                    |
| period             | date     |                                |
| user               | reference| null: false, foreign_key: true |

### Association
- belongs_to :user

