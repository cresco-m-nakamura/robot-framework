*** Settings ***
Documentation    cresco yukatsu
Library    Selenium2Library

*** Variables ***
${BASE_URL}    https://www.google.co.jp
${BROWSER}    Chrome

*** Test Cases ***
クレスコのIR番号を確認するテスト
    ブラウザを起動、Google検索サイトにアクセス
    検索ボックスに「クレスコ」の文字を入力後、検索ボタンを押下する
    検索結果画面から「会社概要」をクリックする
    証券コードが「4674」であることを確認する
    ブラウザを閉じる

*** Keyword ***
ブラウザを起動、Google検索サイトにアクセス
    Open Browser    ${BASE_URL}    ${BROWSER}

ブラウザを閉じる
    Close Browser

検索ボックスに「クレスコ」の文字を入力後、検索ボタンを押下する
    Input Text    name=q    クレスコ
    Sleep    2
    Click Button    name=btnK

検索結果画面から「会社概要」をクリックする
    Click Element    partial link=会社概要

証券コードが「4674」であることを確認する
    Element Text Should Be    CSS=dd:nth-child(16)    4674
