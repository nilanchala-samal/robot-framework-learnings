*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Launch The Browser
    [Arguments]    ${app_url}    ${app_browser}
    Open Browser    ${app_url}    ${app_browser}
    Maximize Browser Window
    ${page_title}=    Get Title
    RETURN    ${page_title}