*** Settings ***
Library           Selenium2Library
Library           myLibrary

*** Test Cases ***
tb_test
    open browser    https://www.taobao.com    chrome    options=add_experimental_option('excludeSwitches'['enable-automation'])
    Maximize Browser Window
    sleep    1
    click link    xpath=//*[@id="J_SiteNavLogin"]/div[1]/div[1]/a[1]
    sleep    7
    input text    xpath=//*[@id="q"]    蜂蜜
    click button    xpath=//*[@id="J_TSearchForm"]/div[1]/button
    sleep    2
    scroll element into view    xpath=//*[@id="mainsrp-itemlist"]/div/div/div[1]/div[6]
    click element    xpath=//*[@id="J_Itemlist_TLink_37160233901"]
    ${handles}    switch window    new
    sleep    1
    click element    xpath=//*[@id="J_LinkBasket"]
    sleep    1
    click element    xpath=//*[@id="J_Logout"]
    sleep    2
    close all browsers0xinxpax11

tb_test_log
    open browser    https://www.taobao.com    chrome
    init_chrome
    Maximize Browser Window
    sleep    1
    click link    xpath=//*[@id="J_SiteNavLogin"]/div[1]/div[1]/a[1]
    sleep    1
    click link    xpath=//*[@id="J_QRCodeLogin"]/div[5]/a[1]
    input text    xpath=//*[@id="TPL_username_1"]    17857696713
    input password    xpath=//*[@id="TPL_password_1"]    aaabbbccc
    drag and drop by offset    xpath=//*[@id="nc_1_n1z"]    300    0

t3
    ${options}=    init_chrome
    log    ${options}
