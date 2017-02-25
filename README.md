# CycleChanger
サイクルチェンジャー用のWeb API
https://desolate-ridge-29818.herokuapp.com

## 概要
サイクルチェッカーからバーコードデータを受け取り保存をおこなう。
ストック量に応じてレベルを返すWeb API

## スペック
* Elixir 1.4.0
* Erlang/OTP 19
* Phoenix Framework 1.2.0
* Heroku Dynos Free
* Heroku Postgres Hobby Dev

## APIの使い方
### itemを送信
#### POST https://desolate-ridge-29818.herokuapp.com/api/items

* status
 * 0: 棚に入れる時
 * 1: ゴミ箱入れる時

```
curl -v -H "Accept: application/json" \
        -H "Content-type: application/json" \
        -X POST -d '{"item": {"barcode_number": "49123456789123", "status": 0 }}' \
        https://desolate-ridge-29818.herokuapp.com/api/items
```

### itemの一覧を取得
#### GET https://desolate-ridge-29818.herokuapp.com/api/items

```
curl -v -H "Accept: application/json" \
        -H "Content-type: application/json" \
        https://desolate-ridge-29818.herokuapp.com/api/items
```

### Levelを取得
#### GET https://desolate-ridge-29818.herokuapp.com/api/items/level

```
curl -v -H "Accept: application/json" \
        -H "Content-type: application/json" \
        https://desolate-ridge-29818.herokuapp.com/api/items/level
```

## 管理画面
Webブラウザ上でデータの確認・追加・削除・更新を行なうことができる。
https://desolate-ridge-29818.herokuapp.com/
