*** Settings ***
Documentation    Resource file for happy path test suite.

Library    Browser

Resource    ./selectors.resource

*** Keywords ***
OPEN WEBPAGE
    [Documentation]    Open browser and navigate to specific url.
    New Browser    chromium    headless=Yes
    Set Browser Timeout    15s
    New Page    ${URL}
    Take Screenshot

NAVIGATE TO SPECIFIC PAGE
    [Documentation]     From home page, click on about me button.
    [Arguments]    ${page}    ${page_header}
    Wait For Elements State    ${page}    enabled
    Take Screenshot
    Click    ${page}
    Take Screenshot
    CHECK PAGE HEADER    ${page_header}

CHECK PAGE HEADER
    [Documentation]    Check page header of predetermined page.
    [Arguments]    ${header}
    Wait For Elements State    ${header}    visible

VERIFY LINKS FROM PROJECTS PAGE
    [Documentation]    On projects page, check if links are working properly.
    Get Element States    ${PROJECT_01}    validate    value & visible
    Wait For Elements State    ${PROJECT_01}    visible
    Click    ${PROJECT_01}
    Get Element States    ${PROJECT_02}    validate    value & visible
    Wait For Elements State    ${PROJECT_02}    visible
    Click    ${PROJECT_02}
    Get Element States    ${PROJECT_03}    validate    value & visible
    Wait For Elements State    ${PROJECT_03}    visible
    Click    ${PROJECT_03}
    Take Screenshot

VERIFY LINKS FROM CONTACT PAGE
    [Documentation]    On contact page, check if links are working properly.
    Get Element States    ${LINKEDIN_LINK}    validate    value & visible
    Wait For Elements State    ${LINKEDIN_LINK}    visible
    Click    ${LINKEDIN_LINK}
    Take Screenshot