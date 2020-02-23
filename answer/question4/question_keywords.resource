*** Variables ***
${BASE_URL}    https://www.google.co.jp
${BROWSER}    Chrome

*** Keyword ***
ブラウザを起動、Google検索サイトにアクセス
    Open Browser    ${BASE_URL}    ${BROWSER}

ブラウザを閉じる
    Close Browser

検索ボックスに「クレスコ」の文字を入力後、エンターキー押下する
    Input Text    name=q    クレスコ
    Sleep    2
    Click Button    name=btnK

検索結果画面から「会社概要」をクリックする
    Click Element    partial link=会社概要

証券コードが「4674」であることを確認する
    Element Text Should Be    CSS=dd:nth-child(16)    4674

検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する
    Input Text    name=q    SeleniumHQ
    Sleep    1
    Press keys    name=q    ENTER
    Sleep    1

検索結果画面から、「SeleniumHQ Browser Automation」をクリックする
    Click Element    partial link=SeleniumHQ Browser Automation

About Seleniumページ上の「Blog」をクリックする
    Click Element    partial link=Blog

ページタイトルが「Selenium Blog」になっていることを確認する
    Title Should Be    Selenium Blog