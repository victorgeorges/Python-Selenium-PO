*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${EMAIL_REGISTRATION}=    test@test.com
${PASSWORD_REGISTRATION}=    test


*** Keywords ***
Sign In
    Page Should Contain    Sign In
    Click Link    xpath=//*[@id="SignIn"]
    Page Should Contain    Login

    Input Text    xpath=//*[@id="email-id"]    ${EMAIL_REGISTRATION}
    Input Password    xpath=//*[@id="password"]    ${PASSWORD_REGISTRATION}
    Select Checkbox    xpath=//*[@id="remember"]

    Click Button    xpath=//*[@id="submit-id"]