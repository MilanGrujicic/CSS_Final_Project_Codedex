*** Settings ***
Documentation    Test suite designed to assure the functionality of all web elements within this CSS final project.

Resource    RESOURCES/keywords.resource

Test Setup        OPEN WEBPAGE


*** Test Cases ***
NAVIGATE TO ABOUT ME PAGE AND PERFORM CHECK
    [Tags]    about_me
    NAVIGATE TO SPECIFIC PAGE    ${ABOUT_ME_BUTTON}    ${ABOUT_ME_HEADER}

NAVIGATE TO PROJECTS PAGE AND PERFORM CHECK
    [Tags]    projects
    NAVIGATE TO SPECIFIC PAGE    ${PROJECTS_BUTTON}    ${PROJECTS_HEADER}
    VERIFY LINKS FROM PROJECTS PAGE

NAVIGATE TO CONTACT PAGE AND PERFORM CHECK
    [Tags]    contact
    NAVIGATE TO SPECIFIC PAGE    ${CONTACT_BUTTON}    ${CONTACT_HEADER}
    VERIFY LINKS FROM CONTACT PAGE