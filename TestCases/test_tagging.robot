*** Test Cases ***
User Registration Test
    [Tags]    sanity
    Log To Console    User registration started
    Log To Console    User registration ended
User Login Test
    [Tags]    regression
    Log To Console    User login started
    Log To Console    User login ended
User Settings Change Test
    [Tags]    regression
    Log To Console    User settings change started
    Log To Console    User settings change ended
User Logout Test
    [Tags]    sanity
    Log To Console    User logout started
    Log To Console    User logout ended
User Process Ended
    [Tags]    final
    Log To Console    Process Ended




# Different Commands
#--------------------------------------------------------------------------------------------
# robot --include=tagName filename -> Testcases with matching tagName will run.
# robot -i tagName filename -> Testcases with matching tagName will run.
# robot -e tagName fileName -> Testcases with matching tagName will be ignored.
# robot --exclude=tagName filename -> Testcases with matching tagName will be ignored.
# robot -i tagName1 -e tagName2 filename -> Testcases with tagName1 will run and tagName2 will be ignored.
# robot -i tagName1 -i tagName2 filename -> Testcases with tagName1 and tagName2 will run.
