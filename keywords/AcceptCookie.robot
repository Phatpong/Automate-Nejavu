*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Click Accept Cookie
    Wait Until Element Is Visible   xpath=//a[text()='ยอมรับ']    5s   
    Click Element    xpath=//a[text()='ยอมรับ']