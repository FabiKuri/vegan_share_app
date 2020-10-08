# README

## usersテーブル

| column              | type   | options     |
| ------------------- | ------ | ----------- |
| nickname            | string | null: false |
| email               | string | null: false |
| password            | string | null: false |


### Association

- has_many :items
- has_many :comments


## ｔweetテーブル

| column          | type    | options                        |
| --------------- | ------- | ------------------------------ |
| shop-name       | string  | null: false                    |
| content         | text    | null: false                    |
| genre-id        | integer | null: false                    |
| plan-base-menu  | integer | null: false                    |
| prefecture-id   | integer | null: false                    |
| food-menu       | integer | null: false                    |


### Association

- belongs_to :user
- has_many :comments

## commentテーブル

| column              | type    | options     |
| ------------------- | ------- | ----------- |
| user-id             | integer | null: false |
| tweet-id            | integer | null: false |
| text                | text    | null: false |


### Association

- belongs_to :tweet 
- belongs_to :user
