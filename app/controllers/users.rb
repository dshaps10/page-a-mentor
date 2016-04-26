get '/login' do
  erb :sign_in
end

post '/login' do
  user = User.find_by(email: params[:email])
  if user && user.password == params[:password]
    session[:user_id] = user.id
    redirect "/users/#{user.id}/profile"
  else
    erb :sign_in
  end
end

get '/sign_up/new' do
  erb :sign_up
end

post '/sign_up' do
  User.create(last_name: params[:last_name],
              first_name: params[:first_name],
              phase: params[:email],
              email: params[:email],
              password: params[:email])
  # redirect "/users/#{user.id}/profile"
  redirect '/login'
end

get '/users/:id/profile' do
  if session[:user_id] == params[:id]
    erb :profile
  else
    erb :error
  end
end
