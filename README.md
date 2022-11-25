# shinonome-synatax  

東雲構文のツイート（削除済み？）にぶら下がっていたbatのリポジトリ[Kaizin0mensou/shinonome-syntax](https://github.com/Kaizin0mensou/shinonome-syntax)のフォークです。  
スクリプト記述の練習で作成しました。中身は相当単純です。  

# 使い方の要約  
このREADMEは細かいところまで丁寧に書いたつもりです。初心者には優しいですが、それなりに分かる人からは分かりづらいです。それなりにわかる方はここを読んでください。  

<details>
<summary>クリックして展開</summary>

## 使い方  

### UNIX系OS  
ダウンロードして実行権限を付与して実行。
install-sh.shでshino-syn(シェルスクリプト)が、install-ps1.shでshino-syn.ps1が```/usr/local/bin```に実行権限付きでコピーされます。  

### Windows  
ダウンロードして実行。PATHに追加すればどこからでも実行できるよ。（なんのために）  

</details>

# 特徴  

もともとはbatのみで、Windowsでしか実行できなかったものを、シェルスクリプトとPowerShellのスクリプトも追加したことで様々な環境で実行できるようにしました。（必要性が問われる。）  
また、ファイル名をアルファベットにしたことで、できるだけ軽量な環境にしたいときなど、日本語入力が不可能な環境でも実行できるようになりました。（必要性がより問われる。）  

# 各ファイルの説明  

| ファイル名 | 説明 |  
| ---- | ---- |  
| shino-syn | シェルスクリプト(dashで動作確認済) |  
| shino-syn.bat | Windowsバッチファイル |  
| shino-syn.ps1 | PowerShell |  
| shino-syn_ps1.bat | Windowsバッチファイル(内部でPowerShellを実行) |
| install-sh.sh | シェルスクリプトのインストール用 |
| install-ps1.sh | PowerShellスクリプトのインストール用 |
| uninstall.sh | 上記2つでインストールしたもののアンインストール用 |

# インストール  

従来の方法でダウンロードやCloneをしてください。↓

- gitがインストールされている端末  
コマンドプロンプトやターミナルなどで、任意の場所で```git clone https://github.com/alpaca-honke/shinonome-syntax.git```を実行してください。  
- その他の端末  
[https://github.com/alpaca-honke/shinonome-syntax(トップページ)](https://github.com/alpaca-honke/shinonome-syntax)の左上、緑の"<>Code"ボタンを押して、"Download ZIP"をDL、任意の場所に展開してください。  


**インストール用シェルスクリプトを実行すると、PATHの通った場所にコピーされ、端末内のどこからでも実行できるようになります。（なんのために）↓**  
- Linux/MacOS/その他UNIX互換OS  
POSIX準拠シェルがインストールされていることを確認して、  
```ash:
sudo chmod 755 install-sh.sh #755の値は、実行権限が付与されればなんでもOK
./install-sh.sh
```
を、ダウンロード/cloneしたディレクトリ内で実行してください。  
※```/usr/local/bin```が存在しない場合、インストールされません。  
アンインストールは```uninstall.sh```の実行または```/usr/local/bin```内の該当スクリプトを削除で可能です。  

- Windows  
インストール用のbatファイルはありません。自分で環境変数Pathに```shino-syn.bat```が存在するフォルダを追加してください。  

**参考：Windowsでの環境変数（ユーザー環境変数）の追加方法**  
コントロールパネル＞システムの詳細設定＞環境変数  
の画面にて、画面上半分「ユーザー環境変数」にPathがあればそれを開く。  なければ「新規(N)」から追加し開く。その後、  
Windows10以降：右側の「新規(N)」をクリックし、該当フォルダのパスを入力。  
Windows8以前：「値」の下に書かれている文字列の末尾に、半角セミコロン(;)で区切って該当パスを追加。  

# 実行方法  

## Linux/MacOS/その他UNIX互換OS  
### shino-syn（シェルスクリプト）  
1. ファイル```shino-syn```に実行権限を付与する。（一回目のみ）（install-sh.shを実行してインストールした場合は不要）  
ここでは例として755で実行権限を付与します。  
```ash:
sudo chmod 755 shino-syn
```
2. ```./shino-syn [文字列]```(PATHが通っていない場合)もしくは```shino-syn [文字列]```(PATHが通っている場合)で実行する。  

### shino-syn.ps1(PowerShell)  
#### PowerShellから実行する場合
1. shino-syn.ps1が存在するディレクトリで```.\shino-syn.ps1 [文字列]```で実行する。  

#### その他のシェル(PowerShellでも可)から実行する場合  
1. ファイル```shino-syn.ps1```に実行権限を付与する。（一回目のみ）（install-ps1.shを実行してインストールした場合は不要）  
ここでは例として755で実行権限を付与します。  
```ash:
sudo chmod 755 shino-syn.ps1
```
2. ```./shino-syn.ps1 [文字列]```(PATHが通っていない場合)もしくは```shino-syn.ps1 [文字列]```(PATHが通っている場合)で実行する。  

## Windows  
### shino-syn.bat  
コマンドプロンプトを開き、shino-syn.batが存在するフォルダで、```shino-syn [文字列]```を実行する。  
PATHが通っていればどのフォルダにいても実行可能。  

### shino-syn.ps1  
**Windowsで動作確認を行った際，文字コードの違いで，PowerShellが正常に動作しませんでした．後ほど修正予定です**．
#### Powershellから実行する場合  
1. PowerShellを管理者権限で実行  
2. ```Set-Location [パス]```でshino-syn.ps1があるフォルダに移動  
3. ```Set-ExecutionPolicy RemoteSigned```を実行、確認画面が出たらyes  
4. ```.\shino-syn.ps1 [文字列]```で実行  
5. **```Set-ExecutionPolicy Restricted```の実行を忘れない**  
#### バッチファイルから実行する場合  
1. コマンドプロンプトを開く  
2. shino-syn.batがあるフォルダで```shino-syn_ps1 [文字列]```を実行  
PATH通っていればどこで実行しても可  
（これやるんならふつうにbatの方実行したほうがいいと思います。）  

# その他  
## 注意事項  
Linux環境で動作確認を行いましたが、確実に動作することは保証しません。自己責任で実行してください。  
Windowsで動作確認を行った際，文字コードの違いで，PowerShellが正常に動作しませんでした．後ほど修正予定です．

もし不具合があった場合、プルリクエストやIssue登録をしていただくか、[Twitter](https://twitter.com/alpaca_honke)に記載の方法でご連絡よろしくおねがいします。  
