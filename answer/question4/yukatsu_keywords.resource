*** Variables ***
${BASE_URL}    https://www.google.co.jp
${BROWSER}    Chrome

*** Keyword ***
Google(https://www.google.co.jp/)にアクセス
    Open Browser    ${BASE_URL}    ${BROWSER}

ブラウザを閉じる
    Close Browser
    
検索ボックスに次のキーワードを入力する
    [Arguments]    ${keyword}
    Input Text    name=q    ${keyword}
    press keys   name=q    ENTER

検索結果画面から「会社概要」をクリックする
    Click Link    partial link=会社概要
    
証券コードが「4674」であることを確認する
    Element Text Should Be    CSS=dd:nth-child(16)    4674

検索結果画面から、「Selenium - Web Browser Automation」をクリックする
    Click Link    partial link=Selenium - Web Browser Automation
    
Seleniumメインページ上の「About」ボタンをクリックする
    Click Link    partial link=About
    
About Seleniumページ上の「News/Blog」をクリックする
    Click Link    partial link=News/Blog
    
ページタイトルが「Selenium News」になっていることを確認する
    Title Should Be    Selenium News
