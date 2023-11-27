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

<<<<<<< Updated upstream
|Column  |Type        |Options       |
|--------|----------- |------------- |
|name    | string     | null : false |
|content | string     | null : false |
|day     | date       | null : false |
|user    | references | null : false |
=======
|Column     |Type        |Options       |
|---------- |----------- |------------- |
|book_name  | string     | null : false |
|content    | text       | null : false |
|start_time | datetime   | null : false |
|user       | references | null : false |
>>>>>>> Stashed changes

### Association

- belong_to :user