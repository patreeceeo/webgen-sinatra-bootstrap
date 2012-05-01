require 'rubygems'
require 'sinatra'


# Set Sinatra variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public_folder, 'out'
set :haml, {:format => :html5} # default Haml format is :xhtml

# Application routes
get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

