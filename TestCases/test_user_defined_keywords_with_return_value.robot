*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resource.robot


*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    edge


*** Test Cases ***
TestCase - 2
    ${title}=    Launch The Browser    ${url}    ${browser}
    Input Text    xpath://input[@name='userName']    mercury
    Input Text    xpath://input[@name='password']    mercury
    Log To Console    ${title}
    Sleep    2

    Close All Browsers

#*** Keywords ***
#Launch The Browser
#    [Arguments]    ${app_url}    ${app_browser}
#    Open Browser    ${app_url}    ${app_browser}
#    Maximize Browser Window
#    ${page_title}=    Get Title
#    RETURN    ${page_title}
    