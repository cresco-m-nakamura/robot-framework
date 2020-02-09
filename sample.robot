*** Settings ***
Documentation  Googleを検索してごにょごにょするサンプルです_ 
Library  Selenium2Library

*** Test Cases ***
Googleのサイトを開いてSeleniumを検索する 
    Googleのページを開く
    検索用語を入力する    seleniumhq.org
    検索ボタンをクリックする

検索でヒットしたSeleniumのサイトを開く 
    検索結果のSeleniumのリンクをクリックする
    Seleniumのサイトが開くはず

    [Teardown]    Close Browser

*** Variables *** 
${google_url}    http://www.google.co.jp/
${browser}    Chrome
${sel_speed}    1

*** Keywords *** 
Googleのページを開く
    Open Browser    ${google_url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    ${sel_speed}
    Title Should Be    Google

検索用語を入力する    [Arguments]    ${search}
    Input Text    q    ${search}

検索ボタンをクリックする
    Click Button    btnK

検索結果のSeleniumのリンクをクリックする
    Click Link    https://www.seleniumhq.org/

Seleniumのサイトが開くはず
    Title Should Be    Selenium - Web Browser automation
