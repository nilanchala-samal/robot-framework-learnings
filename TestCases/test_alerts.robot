*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling alerts
    Open Browser    https://the-internet.herokuapp.com/javascript_alerts    chrome
    Maximize Browser Window
    
    Click Element    xpath://button[normalize-space()='Click for JS Prompt']
    Sleep    5
#    Handle Alert    accept
#    Handle Alert    dismiss
#    Handle Alert    leave
    Input Text Into Alert    Nilanchala Samal    leave
    Alert Should Be Present    I am a JS prompt   # It automatically closes the alert window
    Sleep    3
    
    Close Browser