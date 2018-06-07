*** Settings ***
Resource  ../Resources/PO/LoginPage.robot

*** Keywords ***
Login with Credentials
    [Arguments]  ${LoginScenarios}
    :FOR  ${LoginScenario}  IN  @{LoginScenarios}
    \  run keyword and continue on failure  LoginPage.Navigate To
    \  run keyword and continue on failure  Attempt Login  ${LoginScenario}
   # \  run keyword and continue on failure  Verify Login Success Message  ${LoginScenario}

Navigate to Sign In Page
    LoginPage.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    LoginPage.Enter Credentials  ${Credentials}
    LoginPage.Click Submit
    Sleep  1s

Verify Login Success Message
    [Arguments]  ${ExpectedSuccessMessage}
    LoginPage.Verify Success Message  ${ExpectedSuccessMessage}




