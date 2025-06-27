*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resource1.robot

*** Variables ***

#${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
#${browser}    Chrome


*** Test Cases ***
Login to OrangeHRM
    ce connecte a l'application Orange Demo

*** Keywords ***

