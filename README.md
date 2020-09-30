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
| genre-id        | integer | null: false                    |
| plan-base-menu  | string  | null: false                    |
| prefecture-id   | integer | null: false                    |
| food-menu       | string | null: false                    |
| user-id         | integer | null: false, foreign_key: true |


### Association

- belongs_to :user
