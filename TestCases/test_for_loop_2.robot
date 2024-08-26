*** Test Cases ***
For Loop For Strings 1
    FOR  ${name}    IN    Nilanchala    Somya    Ravan    Bhanja    Viper
        Log To Console    ${name}
    END
    
For Loop For Strings 2
    @{namesList}    Create List    John    Arthur    Thomas    Lizzy    Linda
    FOR    ${name}    IN    @{namesList}
        Log To Console    ${name}
    END


