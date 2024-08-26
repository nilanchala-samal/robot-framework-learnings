*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Switch to Multiple Browser Windows
    Open Browser    https://monkeytype.com/    edge
    Maximize Browser Window
    Sleep    2

    Open Browser    https://www.google.com/    edge
    Maximize Browser Window

    Open Browser    https://www.youtube.com/    edge
    Maximize Browser Window

    Switch Browser    1
    ${title}=    Get Title
    Log To Console    ${title}

    Switch Browser    2
    ${title}=    Get Title
    Log To Console    ${title}

    Switch Browser    3
    ${title}=    Get Title
    Log To Console    ${title}


    Sleep    2
    Close All Browsers