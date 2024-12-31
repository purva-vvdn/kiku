*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
New Tab test
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    about:blank    ${BROWSER}    options=${options}
    Wait Until Element Is Visible    xpath=//span[@class="user-name"]    timeout=5
    Click Element    xpath=//span[@class="user-name"]
    Wait Until Element Is Visible    xpath=//mat-icon[@class="mat-icon    timeout=5
    Click Element    xpath=//mat-icon[@class="mat-icon
    Wait Until Element Is Visible    xpath=//button[@class="mat-mdc-menu-item    timeout=5
    Click Element    xpath=//button[@class="mat-mdc-menu-item
    Wait Until Element Is Visible    xpath=//button[@class="btn-primary"]    timeout=5
    Click Element    xpath=//button[@class="btn-primary"]
Input Text    name=q   //input[@id="username"]    Wait Until Element Is Visible    xpath=//input[@id="username"]    timeout=5
Input Text    //input[@id="username"]    tenant1@gmail.com
Input Text    name=q   //input[@id="password"]    Wait Until Element Is Visible    xpath=//input[@id="password"]    timeout=5
Input Text    //input[@id="password"]    ***
    Wait Until Element Is Visible    xpath=//button[@class="login-btn    timeout=5
    Click Element    xpath=//button[@class="login-btn
    Wait Until Element Is Visible    xpath=//div[@class="backdrop    timeout=5
    Click Element    xpath=//div[@class="backdrop
    Close Browser
