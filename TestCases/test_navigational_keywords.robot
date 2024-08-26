*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing Navigational Keywords
    Open Browser    https://chatgpt.com/    chrome
    Maximize Browser Window

    ${title}=    Get Title
    ${url}=    Get Location
    Log To Console    Url of ${title} is ${url}
    Sleep    2

    Go To    https://www.youtube.com/
    ${title}=    Get Title
    ${url}=    Get Location
    Log To Console    Url of ${title} is ${url}
    Sleep    2

    Go Back
     ${title}=    Get Title
    ${url}=    Get Location
    Log To Console    Url of ${title} is ${url}
    Sleep    2
    

    Close All Browsers