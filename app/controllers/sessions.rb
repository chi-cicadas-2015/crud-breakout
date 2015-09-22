get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  if user = User.authenticate(params[:user])
    session[:user_id] = user.id
    redirect '/'
  else
    erb :'sessions/new'
  end
end
