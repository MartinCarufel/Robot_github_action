*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    Chrome

*** Keywords ***
ce connecte a l'application Orange Demo

    Open Browser    ${url}    ${browser}
    Set Browser Implicit Wait    30
    Maximize Browser Window
    Input Text    name=username    Admin
    Input Text    name=password    admin123
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains Element    xpath=//h6
