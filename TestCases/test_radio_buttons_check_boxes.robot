*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    100milliseconds

#    Selecting radio buttons
    Select Radio Button    gender    female
    Select Radio Button    gender    male

    
#    Select Checkbox
    Select Checkbox    sunday
    Select Checkbox    monday
    Select Checkbox    saturday
    Select Checkbox    wednesday
    Select Checkbox    friday

    # Unselecting check boxes 
    Unselect Checkbox    sunday

    Close Browser