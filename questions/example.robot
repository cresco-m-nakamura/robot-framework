*** Settings ***
Documentation  Googleを検索するテスト
Library  Selenium2Library

*** Variables ***
${BASE_URL}    https://www.google.co.jp
${BROWSER}    Chrome

*** Test Cases ***
Googleで検索するテスト1
    Open Browser    ${BASE_URL}    ${BROWSER}
    Input Text    name=q    クレスコ
    Sleep    1
    Click Button    name=btnK
    Sleep    1
    Close Browser

Googleで検索するテスト2
    Open Browser    ${BASE_URL}    ${BROWSER}
    Input Text    name=q    クレスコ
    Sleep    1
    Click Button    name=btnT
    Sleep    1
    Close Browser

*** Keywords *** 
