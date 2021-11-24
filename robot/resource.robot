*** Variables ***
${URL}                  https://vaccine-haven.herokuapp.com/
${CHROMEDRIVER_PATH}    ${CURDIR}/chromedriver
${HOMEPAGE_TEXT}        See your reserved vaccine.
${CITIZENID}            9621054550512
${FIRSTNAME}            Nanthakarn
${LASTNAME}             Linkool
${BIRTHDATE}            03/07/2001
${BIRTHDATE_STR}        2001-07-03
${OCCUPATION}           Student
${PHONE}                0909544163
${ADDRESS}              50 Thanon Phahon Yothin, Lat Yao, Chatuchak, Bangkok 10900

*** Keywords ***
Setup Test
    Open Homepage
Teardown
    Close All Browsers 
    Log to console         === End Testing ===
Setup
    Log to console      == Start Testing ==
    Create Webdriver    Chrome                 executable_path=${CHROMEDRIVER_PATH}
Open Homepage
    Go To    ${URL}
Open Register page
    Go To    ${URL}registration
Open Info page
    Go To    ${URL}info
Open Reservation page
    Go To    ${URL}reservation