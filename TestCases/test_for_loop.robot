*** Test Cases ***
For Loop 1
    FOR  ${i}    IN RANGE    1    11
        Log To Console    The index is: ${i}
    END

For Loop 2
    FOR  ${i}    IN    1 2 3 4 5 6 7 8 9 10
        Log To Console    ${i}
    END
    
For Loop 3
    @{items}    Create List    1  2  3  4  5
    FOR  ${i}    IN    @{items}
        Log To Console    ${i}
    END

For Loop With Continue And Exit
    FOR    ${i}    IN RANGE    1    10
        Run Keyword If    ${i} == 4    Continue For Loop
        Run Keyword If    ${i} == 8    Exit For Loop
    END
    Log To Console    Loop Finished...
    
    
For Loop With Continue And Exit 2
    FOR  ${number}    IN RANGE    1    10
        Continue For Loop If    ${number} == 3
        Exit For Loop If    ${number} == 7
    END
    Log To Console    Loop Ended...