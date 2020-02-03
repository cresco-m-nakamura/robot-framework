#  question5
## カスタム（自作）ライブラリー実装しなさい
### 前準備：
「custom」ディレクトリを作成する  
「customLibrary.py」「custom_test.robot」をcustom配下に作成する  

	ファイル構成：  
	  \custom  
	　　│  customLibrary.py  
	　　│  custom_test.robot  

ライブラリー作成編：  
customLibrary.pyをエディタで開き、下記の３つメソッドを追加する  

	from robot.api import logger

	def hello_world(key='default'):
	    logger.console(f'{key} de hello world')

	def ハロー_ワールド(key='デフォルト'):
	    logger.console(f'{key} を使ったハローワールド')

	def はろー_わーるど(key='でふぉると'):
	    logger.console(f'{key} を使ったはろーわーるど')

テストデータ作成編：
  custom_test.robotをエディタで開き、下記のテストケースを追加する

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

