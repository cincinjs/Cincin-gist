*** Settings ***
Library             Selenium2Library

# Import Pages
Resource            ${CURDIR}/../pages/Home_Page.robot
Resource            ${CURDIR}/../pages/Login_Page.robot
Resource            ${CURDIR}/../pages/Gist_Page.robot



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
User Navigate To Create Public Gist Page
  Wait Until Element Is Visible           ${btn_add_new_gist}
  Click Element                           ${btn_add_new_gist}
User Input All Fields
  [ARGUMENTS]     ${DESCRIPTION}  ${FILENAME}   ${CONTENT}
  Wait Until Element Is Visible           ${txt_desc_gist}
  Input Text                              ${txt_desc_gist}         ${DESCRIPTION}
  Input Text                              ${txt_filename_gist}     ${FILENAME}
  Input Text                              ${txt_content_gist}      ${CONTENT}
User Click Save Gist Button
  Wait Until Element Is Visible           ${btn_save_gist}
  Wait Until Element Is Enabled           ${btn_save_gist}
  Click Element                           ${btn_save_gist}
Verify User Successfully Save Gist
  Wait Until Element Is Visible           ${lbl_desc}
  Element Text Should Be                  ${lbl_desc}            ${DESCRIPTION}
  Element Text Should Be                  ${lbl_filename}        ${FILENAME}
  Element Text Should Be                  ${lbl_content_gist}    ${CONTENT}
