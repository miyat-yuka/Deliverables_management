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
- has_many :datas
- has_many :hards
- has_many :softwares

## datasテーブル
|Column|Type|Options|
|------|----|-------|
|facility_name|string|null: false|
|registration_date|string|
|address|string|null: false|
|tell|string|null: false|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :softwares

## softwaresテーブル
|Column|Type|Options|
|------|----|-------|
|software|string|
|user_id|references|null: false, foreign_key: true|
|data_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :data
- belongs_to :hard

## hardsテーブル
|Column|Type|Options|
|------|----|-------|
|hard|text|null: false|
|user_id|references|null: false, foreign_key: true|
|software_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :software