# Robot Framework(selenium2library チートシート)
  https://robotframework-ja.readthedocs.io/ja/latest/cheatsheet.html#selenium2library
  
  注意事項：
  ファイルの文字コードはUTF-8で作成してください。
  
# Question1 
## クレスコのIR番号を確認するテスト
  下記のユーザ定義キーワードを作成してテストケースを作成しなさい
  1. ブラウザを起動、Google検索サイトにアクセス
  2. 検索ボックスに「クレスコ」の文字を入力後、エンターキー押下する
  3. 検索結果画面から「会社概要」をクリックする
  4. 証券コードが「4674」であることを確認する
  5. ブラウザを閉じる

ヒント：使用するキーワード  
Open Browser   
Close Browser  
Input Text  
Click Button  
Click Element  
Element Text Should Be  