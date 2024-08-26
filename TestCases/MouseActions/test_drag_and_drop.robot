*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Drag and Drop Testing
    Open Browser    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html    edge
    Maximize Browser Window

    Drag And Drop    id:box1    id:box101
    Drag And Drop    id:box2    id:box102
    Drag And Drop    id:box3    id:box103
    Drag And Drop    id:box4    id:box104
    Drag And Drop    id:box5    id:box105
    Drag And Drop    id:box6    id:box106
    Drag And Drop    id:box7    id:box107

    Sleep    2

    Close All Browsers