*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Login_URL}    https://practicetestautomation.com/practice-test-login/
${browser}    edge

*** Keywords ***
Launch The Browser
    Open Browser    ${Login_URL}    ${browser}
    Maximize Browser Window

Exit Browser
    Close All Browsers
    
Input Username
    [Arguments]    ${username}
    Input Text    xpath://input[@id='username']    ${username}
Input Password
    [Arguments]    ${password}
    Input Text    xpath://input[@id='password']    ${password}
Click Login Button
    Click Element    //button[@id='submit']

Click Logout Link
    Click Link    xpath://a[normalize-space()='Log out']

Error Message Should be Visible
    Page Should Contain    Your password is invalid!

Dashboard Page Should be Visible
    Page Should Contain    Logged In Successfully