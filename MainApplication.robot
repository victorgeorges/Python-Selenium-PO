*** Settings ***
Documentation    	Using PO to access the site
Library    SeleniumLibrary

Resource     Commons/BeginWebTest.robot
Resource     Commons/CloseApplication.robot
Resource     Commons/NewCustomer.robot
Resource     Commons/SignIn.robot

*** Test Cases ***

Main Application
    [Documentation]    CALL OUT THE FUNCIONS
    [Tags]                    Smoke Test  
    Begin Web Test
    Sign In
    New Customer.New Customer
    New Customer.Add Customer
    Close Application
