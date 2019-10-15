*** Settings ***
Library           Selenium2Library

*** Test Cases ***
test11
    Open Browser   https://www.taobao.com/?spm=a2e15.8261149.1581860521.1.1be929b4EeDRDC    Google Chrome    #打开百度网页
    Sleep    5s
    Maximize Browser Window
    Input Text    id=q    连衣裙    #根据id定为输入框，然后在搜索框中输入淘宝
    Sleep    2s
    Click Element    Xpath = //*[@id="J_TSearchForm"]/div[1]/button    #根据id定位按钮，然后点击按钮
    Sleep    2s
    Wait Until Page Contains    连衣裙
    ${title}    Get Title
    Should Contain    ${title}    连衣裙
    #获得窗口Title
    ${titles}    Get Window Titles
    ${titles2}    Get From List    ${titles}    1
    ${titles1}    Get From List    ${titles}    0
    #切换到第二个窗口并添加购物车
    Select Window    title=${titles2}
    Click Element    Xpath = //*[@id="J_isku"]/div/dl[1]/dd/ul/li[1]/a
    Click Element    Xpath = //*[@id="j_costway_btns"]/a[1]
    Click Element    Xpath = //*[@id="J_juValid"]/div[2]/a
    Sleep    3
    #登出
    Mouse Over    Xpath = //*[@id="J_SiteNavLogin"]
    Sleep    2
    Click Element    Xpath = //*[@id="J_SiteNavLoginPanel"]/div/div[2]/p[1]/a[2]
    Sleep    2
    #关闭窗口
    Close Window
    #关闭浏览器
    Close browser
