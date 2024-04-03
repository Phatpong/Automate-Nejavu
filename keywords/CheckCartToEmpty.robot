*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
#----------------------------------------------------------
Check Cart To Empty
    Wait Until Element Is Visible    xpath=//a[@href="https://www.nejavu.com/cart"]//div[text()="0"]    5s
    ${badgeText}=    Get Text    xpath=//a[@href="https://www.nejavu.com/cart"]//div[text()="0"]
    Run Keyword If    '${badgeText}' == '0'    Log    ตะกร้าว่างเปล่า
    ...    ELSE    Log    ยังมีสินค้าอยู่ในตะกร้า
#----------------------------------------------------------