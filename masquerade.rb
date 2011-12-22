require 'rubygems'
require 'sinatra'

set :public_folder, Proc.new { File.join(root, "_site") }

# This before filter ensures that your pages are only ever served 
# once (per deploy) by Sinatra, and then by Varnish after that
before do
  response.headers['Cache-Control'] = 'public, max-age=31557600' # 1 year
end

get '/' do
  File.read('_site/index.html')
end
get '/about' do
  File.read('_site/about.html')
end
get '/feed' do
  #File.read('_site/index.xml')
  "Hello, world"
end
get '/:year/:month/:day/:title' do
  File.read("_site/#{params[:year]}/#{params[:month]}/#{params[:day]}/#{params[:title]}.html")
end
