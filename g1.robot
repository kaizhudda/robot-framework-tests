*** Settings ***
Library           Selenium2Library

*** Test Cases ***
GoogleSearchTest
    GoogleSearchFox    gc

*** Keywords ***
GoogleSearchFox
    [Arguments]    ${browser}
    Open Browser    http://www.google.com    ${browser}
    Go To	http://RobotFramework.org
    Sleep	4
    Close All Browsers
