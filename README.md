# README

## usersテーブル

| column              | type   | options     |
| ------------------- | ------ | ----------- |
| nickname            | string | null: false |
| email               | string | null: false |
| password            | string | null: false |


### Association

- has_many :items


## itemsテーブル

| column          | type    | options                        |
| --------------- | ------- | ------------------------------ |
| shop-name       | string  | null: false                    |
| content         | text    | null: false                    |
| genre_id        | integer | null: false                    |
| plan_base_menu  | string  | null: false                    |
| prefecture_id   | integer | null: false                    |
| food_menu       | integer | null: false                    |
| user_id         | integer | null: false, foreign_key: true |


### Association

- belongs_to :user
