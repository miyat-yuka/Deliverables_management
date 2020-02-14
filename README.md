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
- has_one :dealer

## dealersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|kananame|string|null: false|
|post_id|references|null: false|
|company_id|references|null: false|
### Association
- belongs_to :post
- belongs_to :company

## programsテーブル
|Column|Type|Options|
|------|----|-------|
|software|string|null: false|
|post_id|references|null: false|
### Association
- belongs_to :post
- has_many :products

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|thing|string|null: false|
|model_number|string|null: false|
|category_id|references|null: false|
|program_id|references|null: false|
### Association
- belongs_to :program
- belongs_to :category

## companiesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
### Association
- has_many :dealers

## categoriesテーブル
|Colmun|Type|Options|
|------|----|-------|
|name|string|
### Association
- has_many :products