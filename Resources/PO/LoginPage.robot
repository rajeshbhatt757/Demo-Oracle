*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGN_IN_EMAIL} =          id=userid
${SIGN_IN_PASSWORD} =       id=password
${LOGIN_SUBMIT_BUTTON} =    id=btnActive
${HOME_PAGE} =              id=pt1:_UIShome


*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}
    go to  ${SignInUrl}

Enter Credentials
    [Arguments]  ${Credentials}
    run keyword unless  '${Credentials[0]}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials[0]}
    run keyword unless  '${Credentials[1]}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials[1]}

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

Verify Success Message
    [Arguments]  ${ExpectedSuccessMessage}

    page should contain element  ${HOME_PAGE}
