# Question4
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
	ブラウザを起動、Google検索サイトにアクセス
	    Open Browser    ${BASE_URL}    ${BROWSER}
	
	ブラウザを閉じる
	    Close Browser
	

### question1,2で作成した下記のユーザ定義キーワードをテスト開始、終了時呼び出す
  1. Google(https://www.google.co.jp/)にアクセス
  2. ブラウザを閉じる

	*** Settings ***
	       ：
	Test Setup    Google(https://www.google.co.jp/)にアクセス
	Test Teardown    ブラウザを閉じる


## 重複したキーワードを共通化し、引数を与えて実行しなさい
下記のユーザ定義キーワードに代わり  

	検索ボックスに「クレスコ」の文字を入力後、エンターキー押下する  
	検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する  
下記のユーザ定義キーワードを新規作成して、引数で検索文字を渡すようにする  

	検索ボックスに次のキーワードを入力する  

	*** Keyword ***
	    ：
	検索ボックスに次のキーワードを入力する
	    [Arguments]    ${keyword}
	    Input Text    name=q    ${keyword}
	    press keys   name=q    ENTER
