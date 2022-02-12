*** Settings ***
Documentation   This file contains reusable keywords

Library     SeleniumLibrary
*** Variables ***
${BROWSER_NAME}     firefox
${URL}      https://demo.openemr.io/b/openemr

*** Keywords ***
Launch Browser
    Open Browser      browser=${BROWSER_NAME}     executable_path=${EXECDIR}/driver/geckodriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}/screenshot
    Go To    url=${URL}

End Browser
    Capture Page Screenshot
    Close Browser