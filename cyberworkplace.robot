*** Settings ***
Library    Browser
Library    String
Suite Setup    New Browser    browser=${BROWSER}    headless=${HEADLESS}
Test Setup    New Context    viewport={'width': 1920, 'height': 1080}
Test Teardown    Close Context
Suite Teardown    Close Browser

*** Variables ***
${BROWSER}    chromium
${HEADLESS}    False

*** Test Cases ***
Add Two ToDos And Check Items
    [Documentation]    Search for Cyberworkplace in the search field
    [Tags]    Search Cyberworkplace
    Given Cyberworkplace homepage is open
    When I open the "About us" page
    Then I Search for "Cyberworkplace"

*** Keywords ***
Cyberworkplace homepage is open
    New Page    https://cyberworkplace.tech/

I open the "About us" page
    Click   text="About us"
    Browser.Get Title   equal   About us | Cyberworkplace | Cybersecurity training

I Search for "Cyberworkplace"
    Scroll To   css=#search-form-1
    Fill Text   css=#search-form-1  Cyberworkplace
    Click   css=button.search-submit
    Get Element count   css=article     equal   5
