*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing Tables
    Open Browser    https://testautomationpractice.blogspot.com/    edge
    Maximize Browser Window
    
    # get the number of rows and columns
    ${rows}=    Get Element Count    xpath://table[@name='BookTable']//tr
    ${cols}=    Get Element Count    xpath://table[@name='BookTable']//tr/th
    Log To Console    Number of rows: ${rows}
    Log To Console    Number of columns: ${cols}
    
    # get the data at 4th row and 3rd column
    ${data}=    Get Text    xpath://table[@name='BookTable']//tr[4]/td[3]
    Log To Console    The data at 4th row and 3rd column: ${data}
    
    # get the data from all rows and columns
    FOR  ${i}  IN RANGE    2    ${rows}+1
        FOR  ${j}  IN RANGE    1    ${cols}+1
            ${data}=    Get Text    xpath://table[@name='BookTable']//tr[${i}]/td[${j}]
            Log To Console    ${data}
        END
    END

    # Validations in table
    Validations In Table
    
    
    Close All Browsers

*** Keywords ***
Validations In Table
    Table Column Should Contain    xpath://table[@name='BookTable']    2    Author
    Table Row Should Contain    xpath://table[@name='BookTable']    3    Java
    Table Cell Should Contain    xpath://table[@name='BookTable']    4    2    Animesh
    Table Header Should Contain    xpath://table[@name='BookTable']    Subject