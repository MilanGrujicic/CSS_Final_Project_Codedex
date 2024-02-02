*** Settings ***
Documentation    Resource file for case management test suite.

*** Variables ***
${URL}                http://127.0.0.1:5500/

${ABOUT_ME_BUTTON}    (//button[@class='cybr-btn'])[1]
${PROJECTS_BUTTON}    (//button[@class='cybr-btn'])[2]
${CONTACT_BUTTON}     (//button[@class='cybr-btn'])[3]

${ABOUT_ME_HEADER}    //h1[text()='About me']
${PROJECTS_HEADER}    //h1[text()='Projects']
${CONTACT_HEADER}     //h1[text()='Contact']