*** Settings ***
Documentation    Resource file for happy path test suite.

*** Variables ***
${URL}                http://127.0.0.1:5500/

${ABOUT_ME_BUTTON}    (//button[@class='cybr-btn'])[1]
${PROJECTS_BUTTON}    (//button[@class='cybr-btn'])[2]
${CONTACT_BUTTON}     (//button[@class='cybr-btn'])[3]

${ABOUT_ME_HEADER}    //h1[text()='About me']
${PROJECTS_HEADER}    //h1[text()='Projects']
${CONTACT_HEADER}     //h1[text()='Contact']

${PROJECT_01}         (//article[@class='c-article'])[1]
${PROJECT_02}         (//article[@class='c-article'])[2]
${PROJECT_03}         (//article[@class='c-article'])[3]

${LINKEDIN_LINK}      //a[contains(text(),'> LinkedIn')]