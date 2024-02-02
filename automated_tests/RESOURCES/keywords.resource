*** Settings ***
Documentation    Resource file for case management test suite.

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