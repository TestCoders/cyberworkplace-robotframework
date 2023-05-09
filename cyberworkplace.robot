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
    [Documentation]    Checks if ToDos can be added and ToDo count increases
    [Tags]    Add ToDo
    Given Cyberworkplace homepage is open
    When I open the "About us" page

*** Keywords ***
Cyberworkplace homepage is open
    New Page    https://cyberworkplace.tech/

I open the "About us" page
    Click   text="About us"
    Browser.Get Title   equal   "something wrong"
