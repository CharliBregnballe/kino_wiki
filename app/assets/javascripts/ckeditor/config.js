CKEDITOR.editorConfig = function( config )
{
  // Define changes to default configuration here. For example:
  // config.language = 'fr';
  // config.uiColor = '#AADC6E';

  /* Filebrowser routes */
  // The location of an external file browser, that should be launched when "Browse Server" button is pressed.
  config.filebrowserBrowseUrl = "/ckeditor/attachment_files";
  // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Image dialog.
  config.filebrowserImageBrowseUrl = "/ckeditor/pictures";

  // The location of a script that handles file uploads in the Image dialog.
  config.filebrowserImageUploadUrl = "/ckeditor/pictures?";

  // The location of a script that handles file uploads.
  config.filebrowserUploadUrl = "/ckeditor/attachment_files";

  config.allowedContent = true;

  // Toolbar groups configuration.
  config.toolbar = [
    { name: 'document' },
    { name: 'clipboard', items: ['PasteFromWord', '-', 'Undo', 'Redo' ] },
    { name: 'editing', items: [ 'Find', 'Replace'] },
    { name: 'forms', items: [ 'ImageButton' ] },
    { name: 'basicstyles', items: [ 'Bold', 'Italic', 'Underline' ] },
    { name: 'paragraph', items: [ 'NumberedList', 'BulletedList' ] },
    { name: 'links', items: [ 'Link', 'Unlink' ] },
    { name: 'insert', items: [ 'Image', 'Table', 'HorizontalRule', 'PageBreak', 'Iframe' ] },
    { name: 'styles', items: [ 'Format', 'Font', 'FontSize' ] },
    { name: 'colors', items: [  ] },
    { name: 'tools', items: [  ] },
    { name: 'about', items: [  ] }
  ];

};