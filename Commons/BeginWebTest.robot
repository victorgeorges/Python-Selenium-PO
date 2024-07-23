*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL_BASE}=    https://automationplayground.com/crm/index.html
${BROWSER_BASE}=    chrome
*** Keywords ***
Begin Web Test 
    Log    Starting 
   Open Browser    ${URL_BASE}    ${BROWSER_BASE}
   Page Should Contain    Customers Are Priority One!
 


