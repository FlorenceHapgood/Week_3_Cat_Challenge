#set :session_secret, 'super secret'
require 'sinatra'

get '/' do
  'Hello world!'
end

get '/secret' do
  'We got this.'
end

get '/dogs' do
  'Sheepdog.'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
