*** Settings ***
Library    SeleniumLibrary
*** Keywords ***

New Customer    
    Page Should Contain    Our Happy Customers
    Click Link    xpath=//*[@id="new-customer"]

Add Customer
    Page Should Contain    Add Customer
    Input Text    xpath=//*[@id="EmailAddress"]    test@test
    Input Text    xpath=//*[@id="FirstName"]       First
    Input Text    xpath=//*[@id="LastName"]    Last
    Input Text    xpath=//*[@id="City"]    Sp
    Select From List By Label    xpath=//*[@id="StateOrRegion"]    Hawaii
    Select Radio Button    gender    male
    Select Checkbox    xpath=//*[@id="loginform"]/div/div/div/div/form/div[7]/input
    Click Button    xpath=//*[@id="loginform"]/div/div/div/div/form/button
    
    Wait Until Page Contains    Success! New customer added.

    Page Should Contain    Our Happy Customers