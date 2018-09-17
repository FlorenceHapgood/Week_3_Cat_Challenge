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

get '/cat' do
  erb(:index)
end
