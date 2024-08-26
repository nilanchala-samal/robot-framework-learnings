*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling IFrames
    Open Browser    https://ui.vision/demo/webtest/frames/    chrome
    Maximize Browser Window

    Select Frame    xpath://frameset[1]/frame[1]
    Input Text    xpath://input[@name='mytext1']    This is Frame1
    Unselect Frame
    Sleep    1

    Select Frame    xpath://frameset/frameset/frame[1]
    Input Text    xpath://input[@name='mytext2']    This is Frame2
    Unselect Frame
    Sleep    1

    Select Frame    xpath://frameset/frameset/frame[2]
    Input Text    xpath://input[@name='mytext3']    This is Frame3
    Unselect Frame
    Sleep    1

    Select Frame    xpath://frameset/frameset/frame[3]
    Input Text    xpath://input[@name='mytext4']    This is Frame4
    Unselect Frame
    Sleep    1

#    Select Frame    xpath://frameset[1]/frame[2]
#    Input Text    xpath://input[@name='mytext5']    This is Frame5
#    Unselect Frame
#    Sleep    1


    Close Browser

