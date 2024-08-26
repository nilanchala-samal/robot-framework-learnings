*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Count Total Links And Print The Link Text
    Open Browser    https://money.rediff.com/gainers/bse/daily/groupa    edge

    ${total_links}=    Get Element Count    xpath://a
    Log To Console    Number of links present: ${total_links}

    FOR  ${i}    IN RANGE    1    ${total_links}+1
        ${link_text}=    Get Text    xpath:(//a)[${i}]
        Log To Console    ${link_text}
    END

