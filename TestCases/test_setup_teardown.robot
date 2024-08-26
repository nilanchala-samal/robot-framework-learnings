*** Settings ***
Suite Setup    Log To Console    Opening Browser
Suite Teardown    Log To Console    Closing Browser

Test Setup    Log To Console    Test Started
Test Teardown    Log To Console    Test Ended

*** Test Cases ***
TestCase 1
    Log To Console    Completing TestCase 1

TestCase 2
    Log To Console    Completing TestCase 2

TestCase 3
    Log To Console    Completing TestCase 3

TestCase 4
    Log To Console    Completing TestCase 4


#  Suite Setup - will run once at the start of the script
#  Suite Teardown - will run once at the end of the script
#  Test Setup - will run at the start of each test case
#  Test Teardown - will run at the end of each test case