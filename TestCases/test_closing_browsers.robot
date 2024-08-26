*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing of Closing the Browsers
    Open Browser    https://demowebshop.tricentis.com/register    edge
    Maximize Browser Window
    
    Open Browser    https://google.com    edge
    Maximize Browser Window
    Sleep    2

    Close All Browsers