*** Settings ***
Documentation      This suit file handles all the test case related to the
...     invalid credentials
Resource    ../pages/login_page.resource

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template       Verify Invalid Credential Template

*** Test Cases ***
TC1     John        john123         Dutch       Invalid username or password
TC2     peter        peter123         Danish       Invalid username or password
TC3     ${EMPTY}        peter123         Dutch       Invalid username or password
TC4     peter        ${EMPTY}          Greek       Invalid username or password

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_error}
    Enter Username    ${username}
    Enter Password    ${password}
    Select Language Using Label    ${language}
    Click Login
    Validate Invalid Error Message    ${expected_error}
