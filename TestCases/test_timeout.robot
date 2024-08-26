*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing the Selenium Timeout
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    ${timeout}=    Get Selenium Timeout
    Log To Console    ${timeout}

    Set Selenium Timeout    10 seconds
    Wait Until Page Contains    Register
    Select Radio Button    Gender    M
    Input Text    xpath://input[@id='FirstName']    Nilanchala
    Input Text    xpath://input[@id='FirstName']    Samal
    Input Text    xpath://input[@id='Email']    roshan200098@gmail.com

    Input Text    name:Password    686254
    Input Text    name:ConfirmPassword    686254
    
    ${timeout}=    Get Selenium Timeout
    Log To Console    ${timeout}

    Close Browser
