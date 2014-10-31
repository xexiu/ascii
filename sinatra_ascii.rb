require 'sinatra'
require 'sinatra/reloader' if development?
require 'artii'

get '/' do
  @date = DateTime.now
  @bucle = 0
  erb :index
end

post '/ascii' do
  @name = params[:username]
  @a = Artii::Base.new
  @a = @a.asciify(@name)
  "<pre>#{@a}</pre>"
  # redirect to "/hello/#{@name}"
end

get '/ascii/:username' do
  @name = params[:username]
  "Hello #{@name}"
end
