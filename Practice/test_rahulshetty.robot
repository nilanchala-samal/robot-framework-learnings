*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Functionality Check
    Open Browser    https://rahulshettyacademy.com/loginpagePractise/    edge
    Maximize Browser Window

    Input Text    //input[@id='username']    rahulshettyacademy 
    Input Password    //input[@id='password']    learning
    Click Element    //label[2]//span[2]
    Wait Until Element Is Visible    //div[@class='modal-footer justify-content-center']
    Click Button    //button[@id='okayBtn']
    Select From List By value    //select[@class='form-control']    stud
    Click Button    //input[@id='signInBtn']
    Sleep    5

    Close All Browsers

