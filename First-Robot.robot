*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://www.google.com
${SEARCH_TERM1}    หมูเด้ง
${SEARCH_TERM2}    Moo Deng

** Keywords ***
Test Keywords
    Click Button    ค้นหาด้วย Google_button

*** Test Cases ***
Open Browser And Search หมูเด้ง
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait    5
    Input Text    name:q    ${SEARCH_TERM1}
    Click Button    xpath=//input[@name='btnK']
    Sleep    2
    Log    Test completed

Open Browser And Search Moo Deng
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait    5
    Input Text    name:q    ${SEARCH_TERM2}
    Click Button    xpath=//input[@name='btnK']
    Sleep    2
    Log    Test completed