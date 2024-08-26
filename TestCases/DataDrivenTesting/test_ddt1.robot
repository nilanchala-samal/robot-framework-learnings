*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/login_resources.robot
Suite Setup    Launch The Browser
Suite Teardown    Exit Browser
Test Template    Invalid Login    

*** Test Cases ***    
Right Username Empty Password    student    ${EMPTY}
Right Username Wrong Password    student    wro
Wrong Username Right Password    student1    Password123
Wrong Username Empty Password    student1    ${EMPTY}
Wrong Username Wrong Password    student1    demo


*** Keywords ***
Invalid Login    
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error Message Should Be Visible
    