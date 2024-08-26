*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Registration Testing
    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    Set Selenium Speed    0.5 seconds

    Select Radio Button    Gender M
    
    Input Text    name:FirstName    Nilanchala
    Input Text    name:LastName    Samal
    Input Text    name:Email    nilanchal960@gmail.com

    Input Text    name:Password    686254
    Input Text    name:ConfirmPassword    686254

    ${speed}=    Get Selenium Speed
    Log To Console    ${speed}


    Close Browser