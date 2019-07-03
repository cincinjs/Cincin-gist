*** Settings ***
Library             Selenium2Library
Test Setup          User Open Gist Github Page
Test Teardown       Close All Browsers

# Import Configs
Resource            ${CURDIR}/../configs/user_credentials.robot

# Import Keywords
Resource            ${CURDIR}/../keywords/keywords.robot


*** Variables ***
${HOMEPAGE}               https://gist.github.com/
${BROWSER}                chrome

# Gist
${DESCRIPTION}            Create public gist
${FILENAME}               public_gist.robot
${CONTENT}                Hello Shopee!
${EDIT_CONTENT}           (Edit)

# Message
${text_deleted_massage}   Gist deleted successfully.
${label_all_gist}         All gists

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

User Delete An Existing Gist
  User Login With Valid Credentials
  User Navigate To My Gist List
  User Choose Existing Gist
  User Delete Gist
  Verify User Successfully Delete Gist

User See List Of My Gists
  User Login With Valid Credentials
  User Navigate To My Gist List
  Verify User Able To Open My Gist List
