# SignaturePad + Prawn on Rails 4 Demo

This is a minimal Rails project to demonstrate how to render signature pad data in Prawn PDF:
https://stackoverflow.com/questions/37847686/render-json-to-image-in-prawn-pdf

Once the server is started, you can preview the signature generated on SignaturePad by visit:
`localhost:3000`
To see the generated pdf, vist:
`localhost:3000/pdf`

Important files to look:

```
app
  |- assets
    |- javascripts
      |- root.js.coffee
  |- controllers
    |- root_controller.rb
  |- reports
    |- test_report.rb
  |- views
    |- root
      |- index.html.erb
```

`root.js.coffee` defies the JSON data and create the view only signature pad on `index.html.erb`
`test_report.rb` is the Prawn PDF template that rendered `localhost:3000/pdf`
