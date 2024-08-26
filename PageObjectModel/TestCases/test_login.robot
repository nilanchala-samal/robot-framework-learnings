*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${site_url}    https://demo.guru99.com/test/newtours/
${browser}    edge
${username}    nilanchal
${password}    nilanchala007


*** Test Cases ***
Login Test
    Open Browser    ${site_url}    ${browser}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Signin
    Sleep    3
    Verify Successful Login
    Quit Browser