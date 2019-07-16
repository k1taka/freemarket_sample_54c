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

## users テーブル
|Column          |Type   |Null|Options           |
|----------------|-------|----|------------------|
|id              |integer|not |foreign_key: true |
|nickname        |string |not |                  |
|email           |string |not |unique:true       |
|password        |integer|not |                  |
|family_name     |string |not |                  |
|first_name      |string |not |                  |
|family_name_kana|stirng |not |                  |
|first_name_kana |string |not |                  |
|birth_year      |integer|not |                  |    //Type or varchar
|birth_month     |integer|not |                  |
|birth_day       |integer|not |                  |
|phone           |integer|not |unique:true       |
|post_code       |char   |not |                  | 
|address_city    |string |not |                  |
|address_location|string |not |                  |
|address_building|string |    |                  |
|address_phone   |integer|    |                  |
|prefecture_id   |integer|not |                  |
|profile         |text   |    |                  |
|image_url       |string |not |default "no_image"|
### association
- has_many :comments
- belongs_to :prefecture
- has_many :images
- has_one : credit

## credit テーブル
|Column          |Type   |Options                    |
|----------------|-------|---------------------------|
|id              |integer|null:false                 |
|credit          |text   |null:false                 |
|user_id         |integer|null:false,foreign_key:true|
### asociation
- belongs_to user

## comments テーブル
|Column          |Type   |Options                    |
|----------------|-------|---------------------------|
|id              |integer|null:false                 |
|comment         |text   |null:false                 |
|seller_id       |integer|null:false,foreign_key:true|
|item_id         |integer|null:false,foreign_key:true|
### asociation
- belongs_to saller,class_name: user
- belongs_to item

## Prefectures テーブル
|Column          |Type   |Options                    |
|----------------|-------|---------------------------|
|id              |integer|null:false,foreign_key:true|
|name            |string |null:false                 |
### asociation
- has_many :users
- has_many :items

## items テーブル
|Column             |Type   |Null|Options           |
|-------------------|-------|----|------------------|
|id                 |integer|not |foreign_key: true |
|name               |string |not |index:true        |
|description        |text   |not |                  |
|category_id        |integer|not |foreign_key:true  |
|size_id            |integer|    |foreign_key:true  |
|brand              |string |    |                  |
|condition_id       |integer|not |foreign_key:true  |
|shipping_payer_id  |integer|not |foreign_key:true  |
|shipping_way       |string |not |                  |
|shipping_address_id|integer|not |foreign_key:true  |
|shipping_day_id    |integer|not |foreign_key:true  |
|price              |integer|not |                  |
|saller_id          |integer|not |foreign_key:true  |
|buyer_id           |integer|not |foreign_key:true  |
### asociation 
- belongs_to :category
- belongs_to :size
- belongs_to :condition
- belongs_to :shipping_fee_payer
- belongs_to :shipping_address
- belongs_to :shipping_day_id
- belongs_to :saller_id,class_name: user
- belongs_to :buyer_id,class_name: user
- has_many :comments
- has_many :images

## images テーブル
|Column          |Type   |Options                    |
|----------------|-------|---------------------------|
|id              |integer|null:false                 |
|item_id         |integer|null:false,foreign_ket:true|
|image_url       |string |null:false,index:true      |
### association
- belongs_to :item

## categories  テーブル
|Column          |Type   |Options                    |
|----------------|-------|---------------------------|
|id              |integer|null:false                 |
|name            |string |null:false                 |
|ancestry        |string |null:false                 |
### asociation
- has_many :items

## sizes テーブル
|Column          |Type   |Options                    |
|----------------|-------|---------------------------|
|id              |integer|null:false                 |
|name            |string |null:false                 |
### asociation
- has_many :items

## conditions テーブル
|Column          |Type   |Options                    |
|----------------|-------|---------------------------|
|id              |integer|null:false                 |
|condition       |string |null:false                 |
### asociation
- has_many :items

## shipping_addresses テーブル
|Column          |Type   |Options                    |
|----------------|-------|---------------------------|
|id              |integer|null:false                 |
|address         |string |null:false                 |  //prefectureから値をもらう
### asociation
- has_many :items

## shipping payers テーブル
|Column          |Type   |Options                    |
|----------------|-------|---------------------------|
|id              |integer|null:false                 |
|payer           |string |null:false                 |
### asociation
- has_many :items

## shipping_days テーブル
|Column          |Type   |Options                    |
|----------------|-------|---------------------------|
|id              |integer|null:false                 |
|ready_days      |string |null:false                 |
### asociation
- has_many :items









