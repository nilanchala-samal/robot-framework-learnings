*** Settings ***
Library    SeleniumLibrary
Variables    ../PageElements/signin_locators.py

*** Keywords ***
Click On Register Link
    Click Link    ${register_link_elem}
    
Fill The First Name
    [Arguments]    ${FirstName}
    Input Text    ${first_name_elem}    ${FirstName}

Fill The Contact Information
    [Arguments]    ${FirstName}    ${LastName}    ${PhoneNo}    ${Email}
    Input Text    ${first_name_elem}    ${FirstName}
    Input Text    ${last_name_elem}    ${LastName}
    Input Text    ${phone_elem}    ${PhoneNo}
    Input Text    ${email_elem}   ${Email}

Fill Mailing Information
    [Arguments]    ${Address}    ${City}    ${State}    ${PostalCode}    ${Country}
    Input Text    ${address_elem}    ${Address}
    Input Text    ${city_elem}    ${City}
    Input Text    ${state_elem}    ${State}
    Input Text    ${postal_code_elem}    ${PostalCode}
    Select From List By Value    ${country_elem}    ${Country}


Fill User Information
    [Arguments]    ${Username}    ${Password}    ${ConfirmPassword}
    Input Text    ${username_elem}    ${Username}
    Input Password    ${password_elem}    ${Password}
    Input Password    ${confirm_password_elem}    ${ConfirmPassword}

Submit The Information
    Click Button    ${submit_btn_elem}

Verify Successful Signin
    [Arguments]    ${Username}
    Log To Console    ${Username}
    Page Should Contain    Your user name is ${Username}
