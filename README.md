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

- has_many :weights
- has_many :user_items


## weights テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| day             | date       | null: false                    |
| weight          | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :weight_goal


## weight_goals テーブル

| Column             | Type     | Options                        |
| ------------------ | -------- | ------------------------------ |
| goal               | integer  | null: false                    |
| period             | date     |                                |
| user               | reference| null: false, foreign_key: true |
| weight             | reference| null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :weight
