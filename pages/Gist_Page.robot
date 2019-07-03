*** Variables ***
# Gist Editor
${txt_desc_gist}              name=gist[description]
${txt_filename_gist}          name=gist[contents][][name]
${txt_content_gist}           class=CodeMirror-code

${btn_save_gist}              name=gist[public]
${btn_edit_gist}              xpath=//a[@class="btn btn-sm"]
${btn_update_gist}            xpath=//*[@class="btn btn-primary"]
${btn_delete_gist}            xpath=//*[@class="btn btn-sm btn-danger"]

${lbl_desc}                   xpath=//*[@itemprop="about"]
${lbl_filename}               xpath=//*[@class="user-select-contain gist-blob-name css-truncate-target"]
${lbl_content_gist}           xpath=//*[@class="blob-code blob-code-inner js-file-line"]

# Gist List
${lbl_list_filename}          xpath=//*[contains(text(), "${FILENAME}")]
${lbl_all_gist_list}          xpath=//*[@class="js-selected-navigation-item selected reponav-item"]
