*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${SEARCH_TERM}    robot framework
${SEARCH_RESULT}   Automate
${SEARCH_RESULT2}   User
${SEARCH_RESULT3}   automation

*** Test Cases ***
Search Google and Verify Search Results
    [Documentation]    Test case to search Google and verify results
    Open Google   
    Input Search Term
    press Enter Google Search  
    Verify Search Results
    Close Browser

Search Google and Verify Search Results-2
    [Documentation]    Test case to search Google and verify results
    Open Google   
    Input Search Term
    press Enter Google Search  
    Verify Search Results-2
    Close Browser    


Search Yahoo and Verify Search Results-yahoo
    [Documentation]    Test case to search Google and verify results
    Open Yahoo
    Input Search Term yahoo
    press Yahoo Search  
    Verify Search Results-3
    Close Browser   
*** Keywords ***
Open Google
    Open Browser    https://www.google.com    ${BROWSER}
Open Yahoo
    Open Browser    https://www.yahoo.com    ${BROWSER}
Input Search Term
    Input Text      name=q                  ${SEARCH_TERM}
Input Search Term yahoo
    Input Text      name=p                 ${SEARCH_TERM}

press Enter Google Search
    Press Keys   name=q            ENTER           
press Yahoo Search
    Press Keys   name=p            ENTER           

Verify Search Results
    Wait Until Page Contains                ${SEARCH_RESULT}
    Page Should Contain                    ${SEARCH_RESULT}
Verify Search Results-2
    Wait Until Page Contains                ${SEARCH_RESULT2}
    Page Should Contain                    ${SEARCH_RESULT2}
Verify Search Results-3
    Wait Until Page Contains                ${SEARCH_RESULT3}
    Page Should Contain                    ${SEARCH_RESULT3}