*** Settings ***
Documentation    cresco yukatsu
Library    Selenium2Library

*** Variables ***
${BASE_URL}    https://www.google.co.jp
${BROWSER}    Chrome

*** Test Cases ***
SeleniumのBlogページのタイトルを確認するテスト
    ブラウザを起動、Google検索サイトにアクセス
    検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する
    検索結果画面から、「SeleniumHQ Browser Automation」をクリックする
    About Seleniumページ上の「Blog」をクリックする
    ページタイトルが「Selenium Blog」になっていることを確認する
    ブラウザを閉じる

*** Keyword ***
ブラウザを起動、Google検索サイトにアクセス
    Open Browser    ${BASE_URL}    ${BROWSER}

ブラウザを閉じる
    Close Browser

検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する
    Input Text    name=q    SeleniumHQ
    Sleep    1
    press keys    name=q    ENTER
    Sleep    1

検索結果画面から、「SeleniumHQ Browser Automation」をクリックする
    Click Element    partial link=SeleniumHQ Browser Automation

About Seleniumページ上の「Blog」をクリックする
    Click Element    partial link=Blog

ページタイトルが「Selenium Blog」になっていることを確認する
    Title Should Be    Selenium Blog

