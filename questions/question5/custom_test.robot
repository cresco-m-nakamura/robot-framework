*** Settings ***
Library  customLibrary.py

*** Test Cases ***
英語のキーワードをテストする
    Log To Console    ${EMPTY}
    hello world    English

日本語（カタカナ）のキーワードをテストする
    Log To Console    ${EMPTY}
    ハロー ワールド    カタカナ

日本語（ひらがな）のキーワードをテストする
    Log To Console    ${EMPTY}
    はろー わーるど    ひらがな
