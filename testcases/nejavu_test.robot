*** Settings ***
Library           SeleniumLibrary
Resource    ../keywords/CloseModal.robot
Resource    ../keywords/RedirectCartoonPage.robot
Resource    ../keywords/AcceptCookie.robot
Resource    ../keywords/QueryBook.robot
Resource    ../keywords/AddToCart.robot
Resource    ../keywords/RedirectCartPage.robot
Resource    ../keywords/GetBookInCart.robot
Resource    ../keywords/DeleteBookInCart.robot
Resource    ../keywords/CheckCartToEmpty.robot
Variables    ../resources/config/config.yaml
Suite Setup    Open Browser    ${baseUrl}    chrome
Suite Teardown    Close Browser

*** Variables ***
${Wait Time}    3s


*** Test Cases ***
Open Nejavu Website for Automate Testing
    Maximize Browser Window
    Sleep    ${Wait Time}
    Close Modal If Exists
    Click Accept Cookie
    Redirect to CartoonPage
    Get Book Titles In First Row
    Add Book of First Row To Cart
    Redirect to CartPage
    Get Book Title In Cart
    Delete Books In Cart
    Check Cart To Empty
    

