*** Settings ***
Documentation    cresco yukatsu
Library    Selenium2Library
Resource    question4_keywords.resource
Test Setup    ブラウザを起動、Google検索サイトにアクセス
Test Teardown    ブラウザを閉じる

*** Test Cases ***
クレスコのIR番号を確認するテスト
    検索ボックスに「クレスコ」の文字を入力後、エンターキー押下する
    検索結果画面から「会社概要」をクリックする
    証券コードが「4674」であることを確認する

SeleniumのBlogページのタイトルを確認するテスト
    検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する
    検索結果画面から、「SeleniumHQ Browser Automation」をクリックする
    About Seleniumページ上の「Blog」をクリックする
    ページタイトルが「Selenium Blog」になっていることを確認する