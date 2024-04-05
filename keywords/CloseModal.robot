*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Close Modal If Exists
     Wait Until Element Is Visible    xpath://a[@class='close-modal']    3s
     Click Element    xpath://a[@class='close-modal']
