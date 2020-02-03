*** Settings ***
Resource    yukatsu_keywords.resource
Documentation    cresco yukatsu
Library    Selenium2Library

Test Setup    Google(https://www.google.co.jp/)にアクセス
Test Teardown    ブラウザを閉じる

*** Test Cases ***
クレスコのIR番号を確認するテスト
    検索ボックスに次のキーワードを入力する    クレスコ
    検索結果画面から「会社概要」をクリックする
    証券コードが「4674」であることを確認する

SeleniumのNews/Blogページのタイトルを確認するテスト
    検索ボックスに次のキーワードを入力する    SeleniumHQ
    検索結果画面から、「Selenium - Web Browser Automation」をクリックする
    Seleniumメインページ上の「About」ボタンをクリックする
    About Seleniumページ上の「News/Blog」をクリックする
    ページタイトルが「Selenium News」になっていることを確認する

