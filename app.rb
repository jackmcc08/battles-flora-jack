require 'sinatra'
set :session_secret, "here be dragons"

get '/' do
  '<h1>Hello!</h1>
  <a href="/named-cat">Name a Cat!</a>'
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

get '/random-cat' do
  @name = ['Amigo', 'Misty', 'Almond'].sample
  @test = 'Neo'
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @test = params[:note]
  erb(:index)
end

get '/cat-name-form' do
  # post '/form' do
    erb :form
  # end
end
