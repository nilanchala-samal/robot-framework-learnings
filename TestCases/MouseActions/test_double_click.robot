*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Double Click Action
    Open Browser    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_ev_ondblclick3    edge
    Maximize Browser Window

    Select Frame    xpath://iframe[@id='iframeResult']

    Double Click Element    xpath://button[normalize-space()='Copy Text']
    Sleep    2

    Close All Browsers
