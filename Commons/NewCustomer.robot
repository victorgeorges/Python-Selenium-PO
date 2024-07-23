*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMAIL_CUSTOMER}=    test@test
${FNAME_CUSTOMER}=    First
${LNAME_CUSTOMER}=    Last
${CITY_CUSTOMER}=    US
${STATE_CUSTOMER}=    Hawaii

*** Keywords ***
New Customer    
    Page Should Contain    Our Happy Customers
    Click Link    xpath=//*[@id="new-customer"]
Add Customer
    Page Should Contain    Add Customer
    Input Text    xpath=//*[@id="EmailAddress"]    ${EMAIL_CUSTOMER}
    Input Text    xpath=//*[@id="FirstName"]       ${FNAME_CUSTOMER}
    Input Text    xpath=//*[@id="LastName"]    ${LNAME_CUSTOMER}
    Input Text    xpath=//*[@id="City"]    ${CITY_CUSTOMER}
    Select From List By Label    xpath=//*[@id="StateOrRegion"]    ${STATE_CUSTOMER}
    Select Radio Button    gender    male
    Select Checkbox    xpath=//*[@id="loginform"]/div/div/div/div/form/div[7]/input
    Click Button    xpath=//*[@id="loginform"]/div/div/div/div/form/button
    
    Wait Until Page Contains    Success! New customer added.

    Page Should Contain    Our Happy Customers