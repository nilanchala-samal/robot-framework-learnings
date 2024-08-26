*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
${inputBox}  xpath://input[@id='Email']

*** Test Cases ***
Testing Input Box
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    css:.ico-login

    Element Should Be Visible    ${inputBox}
    Element Should Be Enabled    ${inputBox}
#    Element Should Not Be Visible

    Input Text    ${inputBox}    roshan200098@gmail.com
    Sleep    5
    Clear Element Text    ${inputBox}
    Sleep    3
    Close Browser

