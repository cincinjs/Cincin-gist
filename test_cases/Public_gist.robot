*** Settings ***
Library             Selenium2Library
Test Setup          User Open Gist Github Page
Test Teardown       Close All Browsers

# Import Configs
Resource            ${CURDIR}/../configs/user_credentials.robot

# Import Keywords
Resource            ${CURDIR}/../keywords/keywords.robot


*** Variables ***
${HOMEPAGE}         https://gist.github.com/
${BROWSER}          chrome

# Gist
${DESCRIPTION}      Create public gist
${FILENAME}         public_gist.robot
${CONTENT}          content public gist
${EDIT_CONTENT}     (Edit)

*** Test Cases ***
User create a public gist
  User Login With Valid Credentials
  User Navigate To Create Public Gist Page
  User Input All Fields    ${DESCRIPTION}    ${FILENAME}    ${CONTENT}
  User Click Save Gist Button
  Verify User Successfully Save Gist    ${DESCRIPTION}    ${FILENAME}    ${CONTENT}

User Edit An Existing Gist
  User Login With Valid Credentials
  User Navigate To My Gist List
  User Choose Existing Gist
  User Edit Existing Gist    ${EDIT_CONTENT}
  User Click Update Gist Button
  Verify User Successfully Edit Gist
