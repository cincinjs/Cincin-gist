*** Settings ***
Library             Selenium2Library

# Import Pages
Resource            ${CURDIR}/../pages/Home_Page.robot
Resource            ${CURDIR}/../pages/Login_Page.robot


*** Keywords ***
User Open Gist Github Page
  Open Browser                            ${HOMEPAGE}             ${BROWSER}
User Login With Valid Credentials
  Wait Until Element Is Visible           ${btn_signin}
  Click Element                           ${btn_signin}
  Wait Until Element Is Visible           ${txt_username}
  Input Text                              ${txt_username}    ${USERNAME}
  Input Text                              ${txt_password}    ${PASSWORD}
  Click Element                           ${btn_submit_signin}
