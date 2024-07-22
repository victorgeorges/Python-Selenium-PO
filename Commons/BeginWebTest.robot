*** Settings ***
Library     SeleniumLibrary
*** Keywords ***
Begin Web Test 
    Log    Starting 
   Open Browser    https://automationplayground.com/crm/index.html    chrome
   Page Should Contain    Customers Are Priority One!
 


