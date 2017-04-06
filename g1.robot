*** Settings ***
Library           Selenium2Library

*** Test Cases ***
GoogleSearchTest
    GoogleSearchFox    gc

*** Keywords ***
GoogleSearchFox
    [Arguments]    ${browser}
    Open Browser    http://www.google.com    ${browser}
    Go To    http://RobotFramework.org
    Click Element    //a[text()="EXAMPLES"]
    Click Element    //a[text()="LIBRARIES"]
    Sleep    2
    Close All Browsers
