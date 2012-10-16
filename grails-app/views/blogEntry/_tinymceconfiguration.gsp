                <g:javascript>

                  tinyMCE.init({
                    // General options
                    mode : "textareas",
                    theme : "advanced",
                    width : "600",
                    height: "200",

                    plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave,visualblocks",

    // Theme options
    theme_advanced_buttons1 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,|,bullist,numlist,|,outdent,indent",
    theme_advanced_buttons2 : "formatselect,fontsizeselect,|,forecolor,backcolor,|,link,unlink,anchor,image,|,preview,|,undo,redo",
    theme_advanced_toolbar_location : "top",
    theme_advanced_toolbar_align : "left",
    theme_advanced_statusbar_location : "bottom",
    theme_advanced_resizing : true,
});

                </g:javascript>