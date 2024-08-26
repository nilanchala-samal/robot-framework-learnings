*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Switch to New Tab
    Open Browser    https://demo.automationtesting.in/Windows.html    chrome
    Maximize Browser Window

    Click Button    xpath:(//button[@class='btn btn-info'])[1]
    
    # Keyword for switch to tabbed windows
    Switch Window    title=Selenium
    Click Element    xpath://span[normalize-space()='Documentation']
    
    ${window_titles}=    Get Window Titles
    Log To Console    ${window_titles}

    # Get the window ids of all the tabs that are opened
    ${window_ids}=    Get Window Handles
    Log To Console    ${window_ids}

    Sleep    2
    Close All Browsers
    