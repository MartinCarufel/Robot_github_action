*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#${CHROME_OPTIONS}    --user-data-dir=${TEMPDIR}${/}chrome-profile
#${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
##${browser}    Chrome
#${browser}    Chrome

*** Keywords ***
ce connecte a l'application Orange Demo
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${tempdir}=    Evaluate    __import__('tempfile').mkdtemp()
    Call Method    ${options}    add_argument    --user-data-dir=${tempdir}
    Create WebDriver    Chrome    chrome_options=${options}
    Go To    ${url}



#    Open Browser    ${url}    ${browser}    ${CHROME_OPTIONS}
    Set Browser Implicit Wait    30
    Maximize Browser Window
    Input Text    name=username    Admin
    Input Text    name=password    admin123
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains Element    xpath=//h6
    [Teardown]    Close Browser
