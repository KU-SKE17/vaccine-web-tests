*** Settings ***
Documentation     Testing https://vaccine-haven.herokuapp.com/ register function using SeleniumLibrary.
Library           Selenium2Library
Test Setup        Setup Test
Suite Setup       Setup
Suite Teardown    Teardown
Resource          resource.robot

*** Test Cases ***
Test link to registration page
    Open Homepage
    Click Element         //*[@id="register__link"]
    Location Should Be    ${URL}registration

Test link to citizen information page
    Open Homepage
    Click Element         //*[@id="check_info__link"]
    Location Should Be    ${URL}info

Test open citizen information
    Open Info page
    Input Text                  //*[@id="citizen_id"]       ${CITIZENID}
    Click Element               //*[@id="info__btn"]
    Wait Until Page Contains    User information
    Location Should Be          ${URL}info/${CITIZENID}
    Page Should Contain         ${FIRSTNAME} ${LASTNAME}
    Page Should Contain         ${BIRTHDATE_STR}
    Page Should Contain         ${OCCUPATION} 
    Page Should Contain         ${PHONE}
    Page Should Contain         ${ADDRESS}

Test create a reservation
    Open Homepage
    Click Element               //*[@id="reserve__link"]
    Wait Until Page Contains    Vaccine Reservation
    Input Text                  //*[@id="citizen_id"]                ${CITIZENID}
    Click Element               //*[@id="site_name"]
    Click Element               //*[@id="site_name"]/option[2]
    Click Element               //*[@id="vaccine_name"]
    Click Element               //*[@id="vaccine_name"]/option[3]
    Click Element               //*[@id="reserve__btn"]
    Wait Until Page Contains    ${HOMEPAGE_TEXT}

    Open Info page
    Input Text                  //*[@id="citizen_id"]    ${CITIZENID}
    Click Element               //*[@id="info__btn"]
    Wait Until Page Contains    User information
    Page Should Contain         OGYHSite

Test Cancel reservation
    Open Info page
    Input Text                  //*[@id="citizen_id"]     ${CITIZENID}
    Click Element               //*[@id="info__btn"]
    Wait Until Page Contains    User information
    Click Element               //*[@id="cancel__btn"]
    Wait Until Page Contains    Citizen Page
    Location Should Be          ${URL}info
    Input Text                  //*[@id="citizen_id"]     ${CITIZENID}
    Click Element               //*[@id="info__btn"]
    Wait Until Page Contains    User information
    Page Should Not Contain     OGYHSite
