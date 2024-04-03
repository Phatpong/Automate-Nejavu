*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
#----------------------------------------------------------
Redirect to CartoonPage
    Wait Until Page Contains Element    xpath=//div[@class='dn db-lg rel z-2']//li[3]//a[1]    5s        
    Click Element     xpath=//div[@class='dn db-lg rel z-2']//li[3]//a[1]
#----------------------------------------------------------