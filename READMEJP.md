# ジャングル

Rails 4.2 で構築されたミニ e コマースアプリケーションです。

## Apple M1 マシンのための追加ステップ

1. Ruby 2.6.6 が動作していることを確認する (`ruby -v`)
1. ImageMagick をインストールする `brew install imagemagick imagemagick@6 --build-from-source`.
1. Gemfile.lock を削除する
1. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## セットアップ

1. bundle install` を実行して依存関係をインストールします。
2. 2. `config/database.example.yml` をコピーして `config/database.yml` を作成します。
3. 3. 「config/secrets.yml」をコピーして「config/secrets.yml」を作成する。
4. 4. `bin/rake db:reset` を実行して、db を作成、ロード、シードします。
5. .env.example を元に.env ファイルを作成する。
6. Stripe のアカウントを取得する
7. Stripe (test) キーを適切な .env vars に入れる。
8. 8. `bin/rails s -b 0.0.0.0` を実行してサーバを起動します。

## ストライプテスト

成功シナリオのテストには、クレジットカード番号 4111 1111 1111 1111 を使用します。

詳細は同社のドキュメントを参照してください。<https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 4.2 [Rails ガイド](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
