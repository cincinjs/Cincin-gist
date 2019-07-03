*** Variables ***

${txt_desc_gist}             name=gist[description]
${txt_filename_gist}         name=gist[contents][][name]
${txt_content_gist}          class=CodeMirror-lines
${btn_save_gist}             name=gist[public]

${lbl_desc}                //*[@itemprop="about"]
${lbl_filename}            //*[@class="user-select-contain gist-blob-name css-truncate-target"]
${lbl_content_gist}        //*[@class="blob-code blob-code-inner js-file-line"]
