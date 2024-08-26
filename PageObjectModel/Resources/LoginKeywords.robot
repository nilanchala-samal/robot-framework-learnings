*** Settings ***
Library    SeleniumLibrary
Variables    ../PageElements/login_locators.py

*** Keywords ***
Launch the Browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Enter Username
    [Arguments]    ${username}
    Input Text    ${username_elem}    ${username}
    
Enter Password
    [Arguments]    ${password}    
    Input Password    ${password_elem}    ${password}

Click Signin
    Click Button    ${signin_elem}

Verify Successful Login
    Title Should Be    Login: Mercury Tours

Quit Browser
    Close All Browsers