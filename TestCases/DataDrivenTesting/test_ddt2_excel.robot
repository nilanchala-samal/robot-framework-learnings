*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/login_resources.robot
Library    DataDriver    ../../TestFiles/TestFile.xlsx    sheet_name=Sheet1

Suite Setup    Launch The Browser
Suite Teardown    Exit Browser
Test Template    Invalid Login

*** Test Cases ***
Login Test With Excel

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error Message Should Be Visible