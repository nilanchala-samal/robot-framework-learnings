*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
#    Create Webdriver    chrome    executable_path = "D:\\Selenium\\Drivers\\chromedriver-win32\\chromedriver.exe"
    Open Browser    ${url}    ${browser}
    Login To Application  # Custom keyword
    Close Browser


*** Keywords ***
Login To Application
    Click Link    xpath://a[@class='ico-login']
    Input Text    id:Email  roshan200098@gmail.com
    input password    id:Password  7#q8TSEdy2NB#T
    Click Element    xpath://button[normalize-space()='Log in']