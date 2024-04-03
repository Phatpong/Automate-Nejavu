*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ./QueryBook.robot

*** Keywords ***
#----------------------------------------------------------
# Log Book In Cart And Equal with globalBookTitles 
Get Book Title In Cart
    Log    ${globalBookTitles}
    ${BookTitleInCart}=    Get WebElements    xpath=//div[@class='cart-item-detail']/p[not(@class)]//strong
    ${maxLoop}=    Set Variable    ${5}
    ${listBook}=    Create List   
    FOR    ${index}    IN RANGE    0    ${maxLoop}
    ${book}=    Set Variable    ${BookTitleInCart}[${Index}]
    ${acturlBook}=    Get Text    ${book}
    Log    ${acturlBook}
    Append To List    ${listBook}    ${acturlBook}
    END
    Sort List    ${listBook}
    Log    ${listBook}
    Should Be Equal    ${listBook}    ${globalBookTitles}    
#----------------------------------------------------------    


