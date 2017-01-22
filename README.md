# CycleChanger
サイクルチェンジャー用のAPI
https://desolate-ridge-29818.herokuapp.com

## APIの使い方
### itemを送信
* status
 * 0: 棚に入れる時
 * 1: ゴミ箱入れる時

POST https://desolate-ridge-29818.herokuapp.com/api/items
```
curl -v -H "Accept: application/json" \
        -H "Content-type: application/json" \
        -X POST -d '{"item": {"barcode_number": "49123456789123", "status": 0 }}' \
        https://desolate-ridge-29818.herokuapp.com/api/items
```

### itemの一覧を取得
GET https://desolate-ridge-29818.herokuapp.com/api/items

```
curl -v -H "Accept: application/json" \
        -H "Content-type: application/json" \
        https://desolate-ridge-29818.herokuapp.com/api/items
```

## Development
To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
