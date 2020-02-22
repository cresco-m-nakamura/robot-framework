# Question3  
## Q1,2で作成したテストケースをまとめ、重複したKeywordを共通化して、テスト開始、終了時呼び出しなさい  

question3.robotを作成して、Q1, Q2で作成したテストケースをまとめる  
    
	*** Test Cases ***
	クレスコのIR番号を確認するテスト
        ブラウザを起動、Google検索サイトにアクセス
        検索ボックスに「クレスコ」の文字を入力後、エンターキー押下する
        検索結果画面から「会社概要」をクリックする
        証券コードが「4674」であることを確認する
        ブラウザを閉じる
    
    SeleniumのBlogページのタイトルを確認するテスト
        ブラウザを起動、Google検索サイトにアクセス
        検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する
        検索結果画面から、「SeleniumHQ Browser Automation」をクリックする
        About Seleniumページ上の「Blog」をクリックする
        ページタイトルが「Selenium Blog」になっていることを確認する
        ブラウザを閉じる
 
  
各テストケース起動、終了時に共通して使用するキーワードを、テストケースから削除して、Setup, Teardownに設定する  

	*** Settings ***
	       ：
	Test Setup    ブラウザを起動、Google検索サイトにアクセス
	Test Teardown    ブラウザを閉じる
           ：
	*** Test Cases ***
	クレスコのIR番号を確認するテスト
        検索ボックスに「クレスコ」の文字を入力後、エンターキー押下する
        検索結果画面から「会社概要」をクリックする
        証券コードが「4674」であることを確認する
    
    SeleniumのBlogページのタイトルを確認するテスト
        検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する
        検索結果画面から、「SeleniumHQ Browser Automation」をクリックする
        About Seleniumページ上の「Blog」をクリックする
        ページタイトルが「Selenium Blog」になっていることを確認する
