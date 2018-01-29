CKEDITOR.editorConfig = function (config) {
  // ... other configuration ...

  config.toolbar_mini = [
    ["Bold",  "Italic",  "Underline",  "Strike",  "-",  "Subscript",  "Superscript"],
  ];
  config.toolbar = "advanced";


  config.filebrowserBrowseUrl           = "/ckeditor/attachment_files"
  config.filebrowserFlashBrowseUrl      = "/ckeditor/attachment_files"
  config.filebrowserFlashUploadUrl      = "/ckeditor/attachment_files"
  config.filebrowserImageBrowseLinkUrl  = "/ckeditor/pictures"
  config.filebrowserImageBrowseUrl      = "/ckeditor/pictures"
  config.filebrowserImageUploadUrl      = "/ckeditor/pictures"
  config.filebrowserUploadUrl           = "/ckeditor/attachment_files"

  // ... rest of the original config.js  ...
}