*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${elements_btn}    xpath://div/h5[normalize-space()='Elements']
${name}    xpath://input[@id='userName']
${email}    xpath://input[@id='userEmail']
${current_address}    xpath://textarea[@id='currentAddress']
${permanent_address}    xpath://textarea[@id='permanentAddress']
${frames}    xpath://span[normalize-space()='Frames']

*** Test Cases ***
Automating Site
    # 1. Navigate to the site
    Open Browser    https://demoqa.com/    edge
    Maximize Browser Window

    # 2. Click on Elements
    Execute Javascript    window.scrollTo(0, 500)
    Click Element    ${elements_btn}
    
    ${total_elements}=    Get Element Count    xpath://div[@class='element-list collapse show']//li
    Log To Console    The total number of elements are: ${total_elements}
    
    # 3. Get the list of items under the elements
    FOR  ${i}    IN RANGE    1    ${total_elements}+1
        ${element}=    Get Text    xpath:(//div[@class='element-list collapse show']//li)[${i}]
        Log To Console    ${element}
    END

    # 4. Click on the textbox
    Click Element    xpath://span[normalize-space()='Text Box']

    # 5. Enter the details and submit the form
    Input Text    ${name}    Nilanchala Samal
    Input Text    ${email}    nilanchal960@gmail.com
    Input Text    ${current_address}    Demo Current Address
    Input Text    ${permanent_address}    Demo Permanent Address
    Click Button    xpath://button[@id='submit']

    # 6. Fetch the value post submission and verify
    ${fetched_name}=    Get Text    xpath://p[@id='name']
    ${fetched_email}=    Get Text    xpath://p[@id='email']
    ${fetched_cur_address}=    Get Text    xpath://p[@id='currentAddress']
    ${fetched_per_address}=    Get Text    xpath://p[@id='permanentAddress']
    
    ${actual_name}=    Get Value    ${name}
    ${actual_email}=    Get Value    ${email}
    ${actual_current_address}=    Get Value    ${current_address}
    ${actual_permanent_address}=    Get Value    ${permanent_address}

    Log To Console    ${fetched_name} + ${fetched_email} + ${fetched_cur_address} + ${fetched_per_address}
    Log To Console    ${actual_name} + ${actual_email} + ${actual_current_address} + ${actual_permanent_address}

    # 7. Click on alerts, frames, and windows
    Click Element    xpath://div[normalize-space()='Alerts, Frame & Windows']
    Wait Until Element Is Visible    ${frames}
    
    # 8. Click on frames
    Click Element    ${frames}
    
    # Frame 1
    Select Frame    frame1
    ${box1_text}=    Get Text    //h1[@id='sampleHeading']
    Log To Console    ${box1_text}
    Unselect Frame
    # Frame 2
    Select Frame    frame2
    ${box2_text}=    Get Text    //h1[@id='sampleHeading']
    Log To Console    ${box2_text}
    Unselect Frame

    # 9. Click on Alerts
    Click Element    xpath://span[normalize-space()='Alerts']
    Click Button    xpath://button[@id='alertButton']
    Handle Alert    accept

    Execute Javascript    window.scrollTo(0, 500)
    Click Button    xpath://button[@id='confirmButton']
    Alert Should Be Present    Do you confirm action?    leave
    Handle Alert    accept
    ${confirm_result}=    Get Text    xpath://span[@id='confirmResult']
    Log To Console    ${confirm_result}

    Click Button    xpath://button[@id='promtButton']
    Input Text Into Alert    Nilanchala Samal    leave
    Handle Alert    accept
    ${prompt_result}=    Get Text    xpath://span[@id='promptResult']
    Log To Console    ${prompt_result}

    # 10. Click on Browser Windows
    Click Element    xpath://span[normalize-space()='Browser Windows']
    
    # 11. Click on new tab
    Click Button    xpath://button[@id='tabButton']
    ${window_handles}=    Get Window Handles
    Log To Console    ${window_handles}

    Switch Window    ${window_handles}[1]
    ${new_tab_text}=    Get Text    xpath://h1[@id='sampleHeading']
    Log To Console    ${new_tab_text}
    Close Window
    Switch Window    ${window_handles}[0]
    ${first_tab_title}=    Get Title
    Log To Console    ${first_tab_title}
    Sleep    3


    Close All Browsers
