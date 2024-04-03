*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
#----------------------------------------------------------
Redirect to CartPage
    Wait Until Page Contains Element    xpath=//a[@href='https://www.nejavu.com/cart']  5s  
    Click Element     xpath=//a[@href='https://www.nejavu.com/cart']
#----------------------------------------------------------    