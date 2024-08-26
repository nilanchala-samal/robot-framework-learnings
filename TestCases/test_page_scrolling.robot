*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Page Scrolling
    Open Browser    https://money.rediff.com/gainers/bse/daily/groupa    edge
    Maximize Browser Window

    Execute Javascript    window.scrollTo(0, 9000)
#    Scroll Element Into View    xpath://a[normalize-space()='Kirloskar Bros.']
#    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)

    # To know how many pixels were scrolled
    ${pixels_scrolled}=     Execute Javascript    return window.pageYOffset
    Log To Console    The pixels scrolled is:${pixels_scrolled}
    Sleep    4

    Close All Browsers