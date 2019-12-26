*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${URL}         http://www.google.com
${BROWSER}        Chrome
${DELAY}          0


*** Keywords ***
Open Application
    Open Browser    ${URL}    ${BROWSER}

Close Application
    Close Browser