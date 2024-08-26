*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling Dropdowns
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    # Selecting dropdown values
    Select From List By Label    country    India
    Sleep    1
    Select From List By Index    country    3
    Sleep    1
    Select From List By Value    country    china
    Sleep    1

    Close Browser
