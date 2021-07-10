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

- has_many :goals
- has_many :user_items


## goals テーブル

| Column             | Type     | Options                        |
| ------------------ | -------- | ------------------------------ |
| goal_type_id       | integer  | null: false                    |
| number             | integer  | null: false                    |
| period             | integer  | null: false                    |
| user               | reference| null: false, foreign_key: true |

- _idのつくinteger Typeは、アクティブハッシュを使用する。
### Association
