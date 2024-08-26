*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://demo.guru99.com/test/newtours/    
${browser}    edge


*** Test Cases ***
TestCase - 1
    Launch The Browser    ${url}    ${browser}
    Input Text    xpath://input[@name='userName']    mercury
    Input Text    xpath://input[@name='password']    mercury
    Sleep    2

    Close All Browsers

*** Keywords ***
Launch The Browser
    [Arguments]    ${app_url}    ${app_browser}
    Open Browser    ${app_url}    ${app_browser}
    Maximize Browser Window