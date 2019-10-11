*** Settings ***
Library           Selenium2Library
Library           Collections

*** Test Cases ***
taobao
    #打开浏览器的淘宝主页并使用扫码登录
    Open Browser    https://login.taobao.com/member/login.jhtml?    gc
    Sleep    4
    #    原本打算采用用户名登录发现不可行
    #    Click Element    Xpath = //*[@id="J_Quick2Static"]
    #    Sleep    1
    #    用户名密码登录操作
    #    Input Text    Xpath = //*[@id="TPL_username_1"]    username
    #    Input Text    Xpath = //*[@id="TPL_password_1"]    password
    #    Sleep    2
    #    确认用户名是否成功登录
    #    ${title_1}    Get Title
    #    Click Button    Xpath = //*[@id="J_SubmitStatic"]
    #    ${title_2}    Get Title
    #    should not contain    ${title_2}    ${title_1}
    #搜索MacBook
    Input Text    Xpath = //*[@id="q"]    MacBook
    Click Element    Xpath = //*[@id="J_TSearchForm"]/div[1]/button
    Sleep    1
    #按销量排序
    Click Element    Xpath = //*[@id="J_relative"]/div[1]/div/ul/li[2]/a
    Sleep    2
    #查看商品
    Click Element    Xpath = //*[@id="J_Itemlist_Pic_584859960704"]
    Sleep    4
    #获得窗口Title
    ${titles}    Get Window Titles
    ${titles2}    Get From List    ${titles}    1
    ${titles1}    Get From List    ${titles}    0
    #切换到第二个窗口并添加购物车
    Select Window    title=${titles2}
    Click Element    Xpath = //*[@id="J_isku"]/div/dl[1]/dd/ul/li[1]/a
    Click Element    Xpath = //*[@id="j_costway_btns"]/a[1]
    Click Element    Xpath = //*[@id="J_juValid"]/div[2]/a
    Sleep    2
    #登出
    Mouse Over    Xpath = //*[@id="J_SiteNavLogin"]
    Sleep    2
    Click Element    Xpath = //*[@id="J_SiteNavLoginPanel"]/div/div[2]/p[1]/a[2]
    Sleep    2
    #关闭窗口
    Close Window
    #关闭浏览器
    Close browser
