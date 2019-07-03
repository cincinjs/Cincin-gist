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
  [ARGUMENTS]     ${DESCRIPTION}  ${FILENAME}   ${CONTENT}
  Wait Until Element Is Visible           ${lbl_desc}
  Element Text Should Be                  ${lbl_desc}            ${DESCRIPTION}
  Element Text Should Be                  ${lbl_filename}        ${FILENAME}
  Element Text Should Be                  ${lbl_content_gist}    ${CONTENT}

User Navigate To My Gist List
  Wait Until Element Is Visible           ${btn_avatar_menu}
  Click Element                           ${btn_avatar_menu}
  Wait Until Element Is Visible           ${menu_your_gist}
  Click Element                           ${menu_your_gist}

User Choose Existing Gist
  Wait Until Element Is Visible           ${lbl_list_filename}
  Click Element                           ${lbl_list_filename}

User Edit Existing Gist
  [ARGUMENTS]     ${EDIT_CONTENT}
  Wait Until Element Is Visible           ${btn_edit_gist}
  Click Element                           ${btn_edit_gist}
  Wait Until Element Is Visible           ${txt_desc_gist}
  Input Text                              ${txt_content_gist}     ${EDIT_CONTENT}

User Click Update Gist Button
  Wait Until Element Is Visible           ${btn_update_gist}
  Wait Until Element Is Enabled           ${btn_update_gist}
  Click Element                           ${btn_update_gist}

Verify User Successfully Edit Gist
  Wait Until Element Is Visible           ${lbl_desc}
  Element Should Contain                  ${lbl_content_gist}     ${EDIT_CONTENT}

User Delete Gist
  Wait Until Element Is Visible           ${btn_delete_gist}
  Click Element                           ${btn_delete_gist}
  Handle Alert                            action=ACCEPT     timeout=None

Verify User Successfully Delete Gist
  Wait Until Element Is Visible           ${msg_gist_deleted}
  Element Text Should Be                  ${msg_gist_deleted}     ${text_deleted_massage}

Verify User Able To Open My Gist List
  Wait Until Element Is Visible           ${lbl_all_gist_list}
  Element Should Be Visible               ${lbl_all_gist_list}
  Element Should Contain                  ${lbl_all_gist_list}    ${label_all_gist}
