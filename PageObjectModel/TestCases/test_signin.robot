*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/SigninKeywords.robot
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${site_url}    https://demo.guru99.com/test/newtours/
${browser}    edge
${FirstName}    Nilanchal
${LastName}    Samal
${Phone}    8260972359
${Email}    nilanchal960@gmail.com
${Address}    Marathahalli
${City}    Bengaluru
${State}    Karnataka
${PostalCode}    560037
${Country}    INDIA
${Username}    demousername
${Password}    demopass
${ConfirmPassword}    demopass

*** Test Cases ***
Signin Test
    Launch The Browser    ${site_url}    ${browser}
    Click On Register Link
    Fill The Contact Information    ${FirstName}    ${LastName}    ${Phone}    ${Email}
    Fill Mailing Information    ${Address}    ${City}    ${State}    ${PostalCode}    ${Country}
    Fill User Information    ${Username}    ${Password}    ${ConfirmPassword}
    Submit The Information
    Verify Successful Signin    ${Username}
    Quit Browser


