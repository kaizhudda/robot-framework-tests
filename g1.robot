*** Settings ***
Library           Selenium2Library

*** Test Cases ***
GoogleSearchTest
    GoogleSearchFox    gc

GoogleSearch
    fail

FailTest
    FAIL

*** Keywords ***
GoogleSearchFox
    [Arguments]    ${browser}
    Open Browser    http://www.google.com    ${browser}
    Go To    http://RobotFramework.org
    Click Element    //a[text()="Examples"]
    Click Element    //a[text()="Test libraries"]
    Sleep    2
    Close All Browsers
