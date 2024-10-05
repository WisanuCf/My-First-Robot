*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://www.google.com
${SEARCH_TERM}    หมูเด้ง

** Keywords ***
Test Keywords
    Click Button    ค้นหาด้วย Google_button

*** Test Cases ***
Open Browser And Search Moo Deng
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait    5
    Input Text    name:q    ${SEARCH_TERM}
    Click Button    xpath=//input[@name='btnK']
    Sleep    2
    Log    Test completed
