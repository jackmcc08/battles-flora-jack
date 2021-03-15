require 'sinatra'
set :session_secret, "here be dragons"

get '/' do
  'Hello!'
end

get '/secret' do
  'Welcome to the Matrix'
end

get '/choice' do
  'Red Pill or Blue Pill?'
end

get '/decision' do
  'Red Pill'
end

get '/wrong_decision' do
  'Blue Pill'
end

get '/cat' do
  "<img src='https://image.shutterstock.com/image-photo/cat-medical-mask-protective-antiviral-260nw-1684423789.jpg' style='border:dashed red' alt='kitten'>"
end
