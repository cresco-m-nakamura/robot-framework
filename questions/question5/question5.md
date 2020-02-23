# 重複したキーワードを共通化し、引数を与えて実行しなさい

下記のユーザ定義キーワードに代わり  

    検索ボックスに「クレスコ」の文字を入力後、検索ボタンを押下する
    検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する  

下記のユーザ定義キーワードを新規作成して、引数で検索文字を渡すようにする

    検索ボックスに次のキーワードを入力し検索する  

----
### question_keyword.resource  
    *** Keyword ***
    検索ボックスに次のキーワードを入力する
        [Arguments]    ${keyword}
        Input Text    name=q    ${keyword}
        press keys   name=q    ENTER
question_keywords.resourceに上記の新規Keywordを追加する

----
question4.robotのTest case内のKeywordを書き換える  

    検索ボックスに「クレスコ」の文字を入力後、検索ボタンを押下する  
              ↓
    検索ボックスに次のキーワードを入力し検索する    クレスコ  
    
    検索ボックスに「SeleniumHQ」の文字を入力後、エンターキー押下する
              ↓
    検索ボックスに次のキーワードを入力し検索する    SeleniumHQ  
    