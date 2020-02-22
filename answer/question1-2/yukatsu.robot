*** Settings ***
Documentation    cresco yukatsu
Library    Selenium2Library

*** Test Cases ***
クレスコのIR番号を確認するテスト
    Google(https://www.google.co.jp/)にアクセス
    検索ボックスに「クレスコ」の文字を入力後、エンターキー押下する
    検索結果画面から「会社概要」をクリックする
    証券コードが「4674」であることを確認する
    ブラウザを閉じる

SeleniumのNews/Blogページのタイトルを確認するテスト
    Google(https://www.google.co.jp/)にアクセス
    検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する
    検索結果画面から、「Selenium - Web Browser Automation」をクリックする
    Seleniumメインページ上の「About」ボタンをクリックする
    About Seleniumページ上の「Blog」をクリックする
    ページタイトルが「Selenium Blog」になっていることを確認する
    ブラウザを閉じる

*** Variables ***
${BASE_URL}    https://www.google.co.jp
${BROWSER}    Chrome

*** Keyword ***
Google(https://www.google.co.jp/)にアクセス
    Open Browser    ${BASE_URL}    ${BROWSER}

ブラウザを閉じる
    Close Browser
    
検索ボックスに「クレスコ」の文字を入力後、エンターキー押下する
    Click Element    name=q
    Input Text    name=q    クレスコ
    press keys   name=q    ENTER
    
検索結果画面から「会社概要」をクリックする
    Click Link    partial link=会社概要
    
証券コードが「4674」であることを確認する
    Element Text Should Be    CSS=dd:nth-child(16)    4674

検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する
    Click Element    name=q
    Input Text    name=q    SeleniumHQ
    press keys   name=q    ENTER
    
検索結果画面から、「Selenium - Web Browser Automation」をクリックする
    Click Link    partial link=SeleniumHQ Browser Automation
    
Seleniumメインページ上の「About」ボタンをクリックする
    Click Link    partial link=About
    
About Seleniumページ上の「Blog」をクリックする
    Click Link    partial link=Blog
    
ページタイトルが「Selenium Blog」になっていることを確認する
    Title Should Be    Selenium Blog

