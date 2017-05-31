# this is my first place to run cordova

1. 第一部我先執行了官網的幾個指令，安裝完畢。

    * 有新增專案

    * 額外閱讀：「專案檔案結構 Directory structure」、「文件說明 ref docuemnt」、「專案樣板 project template」

2. 讓cordova的平台新增了瀏覽器
`cordova platform add browser`
3. 用瀏覽器的模式執行cordova
`cordova run browser`

4. The introduction of main page is very good.
[Overview](https://goo.gl/dkFDKK)

5. 不同的環境有不同的設定檔

6. 現在弄到一半

7. 剛才看到android的部分，需要安裝android studio。
然後稍微介紹了一下android開發的流程。
並且需要在`platform/android`路徑下進行編輯
編輯完成後的檔案，則需要透過cordova在把android的檔案部署到其他的環境去。

8. 如果透過第三方的plugin而使用android的資源，這邊是額外提供一個叫做plugman的套件在管理這些plugin。

9. 測試了一下electron, node, sqlite，覺得還是有不妥的地方。而且在electron的整合包下面，還會遇到很多版本的問題。這個問題不如直接用docker來解決。

10. 但是，只要把docker大神請了出來，這事情就不能輕輕鬆鬆地解決了。就必須很認真的把docker所有的機制運用上來。

11. 一開始是先把node請出來，然後單純想掛上sqlite3。雖然可以很順利地掛上去，但是在Dockerfile的控制上會遇到一些初始化的設定問題。（其實也是有點懶）

12. 再進階玩了一下，就覺得都這樣做了。沒必要細學sqlite3，畢竟是輕量級的。這樣就乾脆直接跑couchDB，couchDB畢竟是Nosql，還可以進階處理collistion(conflict)的問題。

13. 但是在軟體升級的部分就比較麻煩一點，無法直接使用到electron的軟體更新機制。（看來可能需要透過使用docker的機制來更新）