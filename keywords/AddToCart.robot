*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

#----------------------------------------------------------
# Log ปุ่ม ใส่ตะกร้า ทุกปุ่มออก
# Add Book of First Row To Cart
#     Wait Until Page Contains Element    xpath=//form[@name='QuickCartRequestForm']
#     @{forms}=    Get WebElements    xpath=//form[@name='QuickCartRequestForm']
#     ${length}=    Get length    ${forms}
#     Log    Number of forms found: ${length}
#----------------------------------------------------------


#----------------------------------------------------------
# Log ปุ่มใส่ตะกร้า 5 อันไม่เกิน
Add Book of First Row To Cart
    Wait Until Page Contains Element    xpath=//form[@name='QuickCartRequestForm']    5s
    @{forms}=    Get WebElements    xpath=//form[@name='QuickCartRequestForm']
    ${maxClicks}=    Set Variable    5
    FOR    ${index}    IN RANGE    0    ${maxClicks}  
    Click Element    ${forms}[${index}]
    Sleep    2s
    END
#----------------------------------------------------------
