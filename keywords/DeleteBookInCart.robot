*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
#----------------------------------------------------------
Delete Books In Cart
    ${itemsCount}=    Get Element Count    xpath=//a[@class='delete-item']
    FOR    ${index}    IN RANGE    ${itemsCount}
    ${deleteButtons}=    Get WebElements    xpath=//a[@class='delete-item']
    Click Element    ${deleteButtons}[0]
    Wait Until Element Is Visible    xpath=//button[contains(text(),'ใช่ ลบรายการ')]    5s
    Click Element    xpath=//button[contains(text(),'ใช่ ลบรายการ')]
    Wait Until Element Is Not Visible    xpath=//button[contains(text(),'ใช่ ลบรายการ')]    5s
    Sleep    2s    
    END
#----------------------------------------------------------