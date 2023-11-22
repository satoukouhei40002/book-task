＃テーブル設計

## users テーブル

|Column              |Type    |Options                      |
|--------------------|--------|---------------------------- |
|nickname            | string | null : false                |
|email               | string | null : false, unique : true |
|encrypted_password  | string | null : false                |

### Association

- has_many :reads

## read テーブル

|Column  |Type        |Options       |
|--------|----------- |------------- |
|name    | string     | null : false |
|content | string     | null : false |
|day     | date       | null : false |
|user    | references | null : false |

### Association

- belong_to :user