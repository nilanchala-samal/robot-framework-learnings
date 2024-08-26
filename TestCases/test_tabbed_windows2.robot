*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Switch Between Multiple Browsers
    Open Browser    https://demo.automationtesting.in/Windows.html    edge
    Maximize Browser Window

    Click Element    xpath://a[normalize-space()='Open New Seperate Windows']
    Click Button    xpath://button[@class='btn btn-primary']
    Sleep    2
    
    ${handles}=    Get Window Handles
    Log To Console    The window handles are: ${handles}

    Switch Window    ${handles}[0]
    ${title}=    Get Title
    Log To Console    Old Page Title is: ${title}

    Switch Window    ${handles}[1]
    ${title}=    Get Title
    Log To Console    New Page Title is: ${title}

    Close All Browsers