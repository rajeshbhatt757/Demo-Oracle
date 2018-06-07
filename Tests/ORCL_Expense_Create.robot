*** Settings ***
Documentation  This the basic info about the whole suite

Resource  ../Resources/Common.robot
Resource  ../Resources/ORCL_HCM_Expense.robot
Resource  ../Data/InputData.robot
Resource  ../Resources/DataManager.robot
Resource  ../Data/InputData.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***

*** Test Cases ***

User should be able to create Expense report in ORACLE Cloud
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke
    ${LoginScenarios} =  DataManager.Get CSV Data  ${LOGIN_PATH_CSV}
    ORCL_HCM_Expense.Login with Credentials  ${LoginScenarios}

