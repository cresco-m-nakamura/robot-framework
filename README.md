# インストール手順
## 1.  Python3 (推奨version: 3.7.3)
	https://www.python.org/downloads/release/python-373/
	上記からインストーラをダウンロードしてインストールしてください。
	下記サイトを参考に「"Add Python 3.x to PATH"」にチェックを必ず入れてください。
	参考サイト：https://www.python.jp/install/windows/install_py3.html
## 2. robotframework-selenium2library
	Python3がインストールされると、Pythonパッケージ管理ツール pip もインストールされるので、
	コマンドプロンプト上で、pipコマンドによりrobotframework-selenium2libraryをインストールします。
	> pip install robotframework-selenium2library==3.0.0
	
	* proxy環境では、--proxyオプション付けて、インストールしてください 
	> pip install robotframework-selenium2library==3.0.0 --proxy 10.100.100.163:15080
### 2.1 Robotframeworkのインストール確認方法
	コマンドプロンプト上で下記コマンドが実行でき、バージョン(Robot Framework 3.1.2)が表示されればOKです。
	> robot --version
	Robot Framework 3.1.2
	*Windows環境によっては、robotframefowrkはPATHを通す必要があるケースがあります。
	よって、コマンドプロンプト上でrobotコマンドが実行できない場合は、下記のサイトを参考に
	環境変数PATHにinstallした(robot.exeがある)ディレクトリの追加をお願いします。
	参考：https://www.atmarkit.co.jp/ait/articles/1805/11/news035.html
	インストール時に、pythonのインストール先をdefaultに設定している場合、exeファイルは、
	「C:\Users\{username}\AppData\Local\Programs\Python\Python37\Scripts」にあります。

## 3. Chrome Browser
	https://www.google.com/intl/ja_jp/chrome/
	上記からインストーラをダウンロードしてインストールしてください。
## 4. ChromeDriver
	https://chromedriver.chromium.org/downloads
	Chrome Browserに対応したVersionをインストールしてください。
	Chrome BrowserのVersion確認方法は、下記のサイトを確認してください。
	参考サイト：https://mhtdesign.net/guide/version-confirmation.html

	上記からzipファイルをダウンロードして任意のディレクトリに配置してください。
	特に配置場所に希望がない場合は、Cドライブにrobotディレクトリを作成し、
	「C:\robot」 配下に配置してください。
### 4.1 ChromeDriverのインストール確認方法
	> chromedriver --version
	コマンドプロンプト上で上記コマンドが実行され、バージョンが表示されればOKです。
	*Windows環境によっては、robotframefowrkはPATHを通す必要があるケースがあります。
	よって、コマンドプロンプト上でrobotコマンドが実行できない場合は、下記のサイトを参考に
	環境変数PATHにinstallした(chromedriver.exeがある)ディレクトリの追加をお願いします。
	参考：https://www.atmarkit.co.jp/ait/articles/1805/11/news035.html
