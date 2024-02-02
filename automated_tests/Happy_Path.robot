*** Settings ***
Documentation    Test suite designed to assure the functionality of all web elements within this CSS final project.

Resource    RESOURCES/keywords.resource

Test Setup        OPEN WEBPAGE


*** Test Cases ***
NAVIGATE TO ABOUT ME PAGE AND PERFORM CHECK
    NAVIGATE TO SPECIFIC PAGE    ${ABOUT_ME_BUTTON}    ${ABOUT_ME_HEADER}

NAVIGATE TO PROJECTS PAGE AND PERFORM CHECK
    NAVIGATE TO SPECIFIC PAGE    ${PROJECTS_BUTTON}    ${PROJECTS_HEADER}

NAVIGATE TO CONTACT PAGE AND PERFORM CHECK
    NAVIGATE TO SPECIFIC PAGE    ${CONTACT_BUTTON}    ${CONTACT_HEADER}