＃テーブル設計

## users テーブル

|Column              |Type    |Options                      |
|--------------------|--------|---------------------------- |
|nickname            | string | null : false                |
|email               | string | null : false, unique : true |
|encrypted_password  | string | null : false                |

### Association

- has_many :reads

## reads テーブル


|Column    |Type        |Options       |
|--------  |----------- |------------- |
|book_name | string     | null : false |
|content   | text       | null : false |
|day       | datetime   | null : false |
|user      | references | null : false |

### Association

- belong_to :user