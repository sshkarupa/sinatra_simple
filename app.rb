
require 'sinatra'
require 'slim'
require 'sass'


# get('/styles.css'){ sass :styles, :style => :compressed, :views => './' }
get('/styles.css'){ content_type 'text/css', :charset => 'utf-8' ; sass :styles, :style => :compressed }


helpers do
  def hepler_name

  end
end


get '/' do
  slim :index
end


__END__
@@layout
doctype 5
html lang="en"
  head
    meta(charset="utf-8")
    meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"
    title TITLE
    link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/latest/css/bootstrap.css"
    link rel="stylesheet" href="/styles.css"
  body
    .container
      == yield
    script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"
    script src="/js/main.js" type="text/javascript"

@@index
h1 Hello world

@@styles
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic)

body
  margin: 10px
  font-family: 'Source Sans Pro', 'Roboto', Arial, sans-serif
  font-size: 12px
