*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing the Selenium Timeout
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    
    ${implicit_wait_time}=    Get Selenium Implicit Wait   # By default 0
    Log To Console    ${implicit_wait_time}
    
    Set Selenium Implicit Wait    10 seconds
    Select Radio Button    Gender    M
    Input Text    xpath://input[@id='FirstName1']    Nilanchala
    Input Text    xpath://input[@id='FirstName']    Samal
    Input Text    xpath://input[@id='Email']    roshan200098@gmail.com

    Input Text    name:Password    686254
    Input Text    name:ConfirmPassword    686254

    ${implicit_wait_time}=    Get Selenium Implicit Wait
    Log To Console    ${implicit_wait_time}

    Close Browser
