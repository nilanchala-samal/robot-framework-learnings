*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Capturing Elements and Page
    Open Browser    https://www.google.com/
    Maximize Browser Window
#    //img[@id='hplogo']

    Capture Element Screenshot    //img[@id='hplogo']    google-doodle.png
    Capture Page Screenshot    google-homepage.png

    Close All Browsers