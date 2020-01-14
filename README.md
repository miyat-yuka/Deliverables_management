# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# deliverables_management

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :posts
- has_many :programs
- has_many :hards
- has_many :products

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|facility_name|string|null: false|
|registration_date|string|
|address|string|null: false|
|tell|string|null: false|
|user_id|references|null: false|
### Association
- belongs_to :user
- has_many :programs

## programsテーブル
|Column|Type|Options|
|------|----|-------|
|software_name|string|
|user_id|references|null: false|
|post_id|references|null: false|
### Association
- belongs_to :user
- belongs_to :post
- has_many :hards

## hardsテーブル
|Column|Type|Options|
|------|----|-------|
|category|string|null: false|
|user_id|references|null: false|
|software_id|references|null: false|
### Association
- belongs_to :user
- belongs_to :program
- has_many :products

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|thing|string|null: false|
|user_id|references|null: false|
|hard_id|references|null: false|
### Association
- belongs_to :user
- belongs_to :hard