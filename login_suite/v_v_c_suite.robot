*** Settings ***
Documentation       bvcdsxaz
Library     SeleniumLibrary

*** Test Cases ***
Verify Valid Credentials Test
    Open Browser      browser=firefox         executable_path=${EXECDIR}/driver/geckodriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin123
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit']
    Title Should Be    OpenEMR
    Close Browser
    