*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Variables ***
@{globalBookTitles}

*** Keywords ***
#----------------------------------------------------------
# Log หนังสือทุกเล่มและจำนวนทุกเล่มออก
# Get book Titles In First Row
#     @{bookTitles}=    Get Webelements    xpath=//div[@class='space overflow-hide'][1]//h5[@class='detail-title']
#     ${length}=    Get Length    ${bookTitles}
#     Log    Number of books found: ${length}
#     FOR    ${book}    IN    @{bookTitles}
#     ${title}=    Get Text    ${book}
#     Log    ${title}
#     END
#----------------------------------------------------------


#----------------------------------------------------------
# Log หนังสือ5เล่มแรกเท่านั้น ใช้ FOR LOOP จำกัดให้มากสุดที่เจอ ไม่เกิน 5
# Get Book Titles In First Row
#     @{bookTitles}=    Get Webelements    xpath=//div[@class='space overflow-hide'][1]//h5[@class='detail-title']
#     ${maxLoop}=    Set Variable    ${5}
#     FOR    ${index}    IN RANGE    0    ${maxLoop}
#     ${book}=    Set Variable    ${bookTitles}[${Index}]
#     ${bookTitle}=    Get Text    ${book}
#     Log    ${bookTitle}
#     END
#----------------------------------------------------------

#----------------------------------------------------------
# Log หนังสือ5เล่มแรกเท่านั้น ใช้ FOR LOOP จำกัดให้มากสุดที่เจอ ไม่เกิน 5 และ Sort เรียงใหม่
Get Book Titles In First Row
    @{bookTitles}=    Get Webelements    xpath=//div[@class='space overflow-hide'][1]//h5[@class='detail-title']
    ${maxLoop}=    Set Variable    ${5}
    FOR    ${index}    IN RANGE    0    ${maxLoop}
    ${book}=    Set Variable    ${bookTitles}[${Index}]
    ${bookTitle}=    Get Text    ${book}
    Log    ${bookTitle}
    Append To List    ${globalBookTitles}    ${bookTitle}
    END
    Sort List    ${globalBookTitles}
    Log    ${globalBookTitles}
#----------------------------------------------------------