## 自動販売機をRailsで作る

* ### これはナニ？

  rails を利用して自動販売機の機能を実装しています。
  

  
  
  
* ### Version
  
  Ruby 2.6.0
  
  Rails 6.0.0
  
  
  
* ### テストデータ
  
  db/seeds.rb ファイルにより、テストデータの投入が可能です。
  
  ```$ rake db:seed```


* ### 機能（画面）一覧
  
  - 自動販売機root画面（http://localhost:3000 ）

    飲み物情報（Drinksデータ）の一覧表示

    購入ボタン（未実装）

    【入金画面へ】→入金画面への遷移

    【キャンセル】（未実装）→入金情報のクリア
  
  - 入金画面（http://localhost:3000/deposits/show ）

    お金情報（Moneyデータ）の一覧表示
  
  - 入金状況の確認画面（http://localhost:3000/deposits ）

    入金情報（Depositsデータ）の一覧表示

    【続けて入金】→入金画面への遷移

    【購入へ】→自動販売機root画面への遷移

    【キャンセル】→入金情報のクリア
  
  - 飲み物のメンテナンス画面（http://localhost:3000/drinks ）

    飲み物情報の追加修正削除が可能。

    現状、リンクによる遷移等は行っていない。

    seedファイルでデータ投入可能。
  
  - お金のメンテナンス画面（http://localhost:3000/moneys ）

    お金情報の追加修正削除が可能。

    現状、リンクによる遷移等は行っていない。

    seedファイルでデータ投入可能。
  
    
  
* ### テーブル構成（現状）
  
  - Drinks [name, image, price]

    →飲み物情報の管理に使用。

  
  - Money [name, price]

    →購買に利用するお金（各種紙幣、貨幣）情報の管理に使用。

  
  - Deposits [money_id, quantity]

    →入金情報の管理に使用。

    →どのお金を、いくつ投入しているのかを管理する。

    →セッション毎に?データを管理する必要が出てくる印象（未対応）
    
  - Cashier [money_id]（追加予定）

    →自動販売機の保持金額の管理に使用。
