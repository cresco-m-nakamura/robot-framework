# Question4
## Variables, Keywordを分離して、リソースファイルを作成しなさい

### Variables、Keywordセクションをリソースファイルに分ける
question3で作成したファイル「question3.robot」を「question4.robot」にリネームする。  
  
----
### question_keywords.resource  
	*** Variables ***
	${BASE_URL}    https://www.google.co.jp
	${BROWSER}    Chrome
	    :
	
	*** Keyword ***
	ブラウザを起動、Google検索サイトにアクセス
	    Open Browser    ${BASE_URL}    ${BROWSER}
	
	ブラウザを閉じる
	    Close Browser
	    :
	    :
「question_keywords.resource」を新規作成し、question4.robotの中にあるVariables、Keywordセクションを保存する。    
  
----
### question4.robot  
	*** Settings ***
	　　　　：
	Resource    question_keywords.resource

question4.robotのSettingsセクションでquestion4_keywords.resourceを読み込ませる。  

----