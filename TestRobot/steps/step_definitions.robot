*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Keywords ***

get
    [Arguments]    ${url}
    Go To  ${url}

Click on
    [Arguments]    ${locator}
    Click Element  ${locator}

Submit
    [Arguments]    ${locator}
    Submit Form  ${locator}

Clear
    [Arguments]    ${locator}
    Clear Element Text	  ${locator}

Sendkeys
    [Arguments]    ${text}  ${locator}
    Input Text  ${locator}   ${text}

Verify that the element is visible
    [Arguments]    ${locator}
    Element Should Be Visible  ${locator}

Verify that the element is not visible
    [Arguments]    ${locator}
    Element Should Not Be Visible  ${locator}

Verify that the element is present
    [Arguments]    ${locator}
    Page Should Contain Element  ${locator}

Verify that the element is not present
    [Arguments]    ${locator}
    Page Should Not Contain Element  ${locator}

Verify that the element text is
    [Arguments]    ${locator}  ${text}
    Element Text Should Be  ${locator}  ${text}

Verify that the element text is not
    [Arguments]    ${locator}  ${text}
    Element Should Not Contain  ${locator}  ${text}

Verify link with text present
    [Arguments]    ${locator}  ${text}
    Element Should Contain  ${locator}  ${text}

Waits until element is enabled
    [Arguments]    ${locator}
    Element Should Contain  ${locator}

Waits until element is visible
    [Arguments]    ${locator}
    Wait Until Element Is Visible  ${locator}

Select Frame
    [Arguments]                        ${locator}
    Select Frame                       ${locator}

Switch To Default Content
    Unselect Frame

Verify that the element value is
    [Arguments]                          ${locator}    ${attribute}    ${value}
    Element Attribute Value Should Be    ${locator}    ${attribute}    ${value}