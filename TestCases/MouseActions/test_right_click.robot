*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouse Actions
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    edge
    Maximize Browser Window

    # Keyword for right click
    Open Context Menu    //span[@class='context-menu-one btn btn-neutral']
    Sleep    2
    Click Element    xpath://li[@class='context-menu-item context-menu-icon context-menu-icon-edit']
    Sleep    2

#    Alert Should Be Present    clicked: edit
    Handle Alert    accept
    Sleep    2

    Close All Browsers
