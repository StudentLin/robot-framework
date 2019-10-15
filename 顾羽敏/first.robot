*** Settings ***
Library           Selenium2Library
Library           MyLibrary
Library           Collections

*** Test Cases ***
01
    open browser    https://login.taobao.com    chrome
    Sleep    4
    ###未解决的账号密码登录法
    #click element    xpath=//*[@class="forget-pwd J_Quick2Static"]
    #Input Text    xpath=//*[@id="TPL_username_1"]
    #Input Text    xpath=//*[@id="TPL_password_1"]
    #Click Button    xpath=//*[@id="]_SubmitStatic"]
    Sleep    2
    input text    xpath=//*[@id="q"]    葡萄
    click element    xpath=//*[@class="search-button"]
    click element    xpath=//*[@class="J_ClickStat"]
    sleep    10
    ${handles}    switch window    new
    sleep    5
    click element    xpath=//*[@id="J_LinkBasket"]
    sleep    2
    click element    xpath=//*[@id="J_Logout"]
    sleep    5
    close browser
