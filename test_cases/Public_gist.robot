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


*** Test Cases ***
User create a public gist
  User Login With Valid Credentials
