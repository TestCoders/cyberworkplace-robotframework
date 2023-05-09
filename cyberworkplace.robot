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
Search for Cyberworkplace in search field
    [Documentation]    Search for Cyberworkplace in search field
    [Tags]    Search Cyberworkplace
    Given Cyberworkplace homepage is open
    When I open the "About us" page
    Then I Search for "Cyberworkplace"
    Then I check the cookies

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

I check the cookies
    ${cookie_default}=  Get Cookie     mc_session_ids[default]
    ${cookie_multi_0}=  Get Cookie      mc_session_ids[multi][0]
    ${cookies}=     Get Cookies
    # Should Not Be Equal      ${cookie_default}     ${cookie_multi_0}
    Should Be Equal     ${cookie_default}   ${cookies}