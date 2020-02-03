# Robot Framework(selenium2library チートシート)
  https://robotframework-ja.readthedocs.io/ja/latest/cheatsheet.html#selenium2library
  
  注意事項：
  ファイルの文字コードはUTF-8で作成してください。
  
## 例題
## googleでクレスコを検索して結果画面を確認するテスト
  1. Google(https://www.google.co.jp/)にアクセス
  2. 検索ボックスに「クレスコ」の文字を入力する
  3. Google検索ボタンを押下する
  4. ブラウザを閉じる

## question1 
## クレスコのIR番号を確認するテスト
  下記のユーザ定義キーワードを作成してテストケースを作成しなさい
  1. Google(https://www.google.co.jp/)にアクセス
  2. 検索ボックスに「クレスコ」の文字を入力後、エンターキー押下する
  3. 検索結果画面から「会社概要」をクリックする
  4. 証券コードが「4674」であることを確認する
  5. ブラウザを閉じる

## question2
## SeleniumのNews/Blogページのタイトルを確認するテスト
  下記のユーザ定義キーワードを作成してテストケースを作成しなさい
  1. Google(https://www.google.co.jp/)にアクセス
  2. 検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する
  3. 検索結果画面から、「Selenium - Web Browser Automation」をクリックする
  4. Seleniumメインページ上の「About」ボタンをクリックする
  5. About Seleniumページ上の「News/Blog」をクリックする
  6. ページタイトルが「Selenium News」になっていることを確認する
  7. ブラウザを閉じる
