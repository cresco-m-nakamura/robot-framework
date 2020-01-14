*** Variables ***
${BASE_URL}    https://www.google.co.jp
${BROWSER}    Chrome

*** Keyword ***
Google(https://www.google.co.jp/)にアクセス
    Open Browser    ${BASE_URL}    ${BROWSER}

ブラウザを閉じる
    Close Browser
    
Google検索ボタンを押下する
    Click Button    name=btnK

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
    Click Link    partial link=Selenium - Web Browser Automation
    
Seleniumメインページ上の「About」ボタンをクリックする
    Click Link    partial link=About
    
About Seleniumページ上の「News/Blog」をクリックする
    #Click Element    css=h3:nth-child(3) > a
    Click Link    partial link=News/Blog
    
ページタイトルが「Selenium News」になっていることを確認する
    Title Should Be    Selenium News
