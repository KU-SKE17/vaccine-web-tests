*** Settings ***
Documentation     Testing https://vaccine-haven.herokuapp.com/ register function using SeleniumLibrary.
Library           Selenium2Library
Test Setup        Setup Webdriver
Test Teardown     Close All Browsers
Suite Setup       Log to console                                                                           == Start Testing ==
Suite Teardown    Log to console                                                                           === End Testing ===
Resource          resource.robot

*** Test Cases ***
Test register a citizen
    Open Register page
    Input Text                  //*[@id="citizen_id"]       ${CITIZENID}
    Input Text                  //*[@id="name"]             ${FIRSTNAME}
    Input Text                  //*[@id="surname"]          ${LASTNAME}      
    Input Text                  //*[@id="birth_date"]       ${BIRTHDATE}     
    Input Text                  //*[@id="occupation"]       ${OCCUPATION}    
    Input Text                  //*[@id="phone_number"]     ${PHONE}         
    Input Text                  //*[@id="address"]          ${ADDRESS}       
    Click Element               //*[@id="register__btn"]
    Wait Until Page Contains    ${HOMEPAGE_TEXT}
