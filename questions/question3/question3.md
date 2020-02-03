# Question3 
## 重複したKeywordを共通化して、テスト開始、終了時呼び出しなさい

### Variables、Keywordセクションを別ファイルに分け、アクションを共通化する
テストデータ（yukatsu.robot）のSettingsセクションで上記ファイルを読み込ませる  

yukatsu.robot  

	*** Settings ***
	　　　　：
	Resource    yukatsu_keywords.resource

「yukatsu_keywords.resource」を作成し、課題1,2で作成したVariables、Keyword
セクションを保存する。  
  
yukatsu_keywords.resource  

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

### question1,2で作成した下記のユーザ定義キーワードをテスト開始、終了時呼び出す
  1. Google(https://www.google.co.jp/)にアクセス
  2. ブラウザを閉じる

	*** Settings ***
	       ：
	Test Setup    Google(https://www.google.co.jp/)にアクセス
	Test Teardown    ブラウザを閉じる
