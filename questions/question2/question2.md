# Robot Framework(selenium2library チートシート)
  https://robotframework-ja.readthedocs.io/ja/latest/cheatsheet.html#selenium2library
  
  注意事項：
  ファイルの文字コードはUTF-8で作成してください。
  
# Question2
## SeleniumのBlogページのタイトルを確認するテスト
  下記のユーザ定義キーワードを作成してテストケースを作成しなさい
  1. Google(https://www.google.co.jp/)にアクセス
  2. 検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する
  3. 検索結果画面から、「SeleniumHQ Browser Automation」をクリックする
  4. About Seleniumページ上の「Blog」をクリックする
  5. ページタイトルが「Selenium Blog」になっていることを確認する
  6. ブラウザを閉じる

ヒント：使用するキーワード  
Open Browser   
Close Browser  
Input Text  
Click Button  
Click Element  
press keys  
Element Text Should Be  
Title Should Be  
