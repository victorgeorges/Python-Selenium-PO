*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Sign In
    Page Should Contain    Sign In
    Click Link    xpath=//*[@id="SignIn"]
    Page Should Contain    Login

    Input Text    xpath=//*[@id="email-id"]    test@test.com
    Input Password    xpath=//*[@id="password"]    test
    Select Checkbox    xpath=//*[@id="remember"]

    Click Button    xpath=//*[@id="submit-id"]