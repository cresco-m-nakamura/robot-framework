*** Settings ***
Documentation    cresco yukatsu
Library    Selenium2Library

*** Variables ***
${BASE_URL}    https://www.google.co.jp
${BROWSER}    Chrome

*** Test Cases ***
クレスコのIR番号を確認するテスト
    ブラウザを起動、Google検索サイトにアクセス
    検索ボックスに「クレスコ」の文字を入力後、エンターキー押下する
    検索結果画面から「会社概要」をクリックする
    証券コードが「4674」であることを確認する
    ブラウザを閉じる

*** Keyword ***
ブラウザを起動、Google検索サイトにアクセス
    (keyword)    ${BASE_URL}    ${BROWSER}

ブラウザを閉じる
    (keyword)
    
検索ボックスに「クレスコ」の文字を入力後、エンターキー押下する
    (keyword)    name=q    クレスコ
    Sleep    2
    (keyword)    name=btnK
    
検索結果画面から「会社概要」をクリックする
    (keyword)    partial link=会社概要
    
証券コードが「4674」であることを確認する
    (keyword)    CSS=dd:nth-child(16)    4674
