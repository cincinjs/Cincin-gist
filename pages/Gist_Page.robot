*** Variables ***

${txt_desc_gist}              name=gist[description]
${txt_filename_gist}          name=gist[contents][][name]
${txt_content_gist}           class=CodeMirror-code

${btn_save_gist}              name=gist[public]
${btn_edit_gist}              //a[@class="btn btn-sm"]
${btn_update_gist}            //*[@class="btn btn-primary"]
${btn_delete_gist}            //*[@class="btn btn-sm btn-danger"]

${lbl_desc}                   //*[@itemprop="about"]
${lbl_filename}               //*[@class="user-select-contain gist-blob-name css-truncate-target"]
${lbl_content_gist}           //*[@class="blob-code blob-code-inner js-file-line"]

# Gist List
${lbl_list_filename}          //*[contains(text(), "${FILENAME}")]
