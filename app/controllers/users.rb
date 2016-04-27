get '/login' do
  erb :sign_in
end

post '/login' do
  @user = User.find_by_email(params[:email])
  if @user.password == params[:password]
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}/profile"
  else
    erb :error
  end
end

get '/sign_up/new' do
  erb :sign_up
end

post '/sign_up' do
  user = User.create(last_name: params[:last_name],
                     first_name: params[:first_name],
                     phase: params[:phase],
                     email: params[:email],
                     password: params[:password])
  # redirect "/users/#{user.id}/profile"
  redirect "/users/#{user.id}/profile"
end

get '/users/:id/profile' do
  @user = User.find(params[:id])
  if session[:user_id] == @user.id
    erb :profile
  else
    erb :error
  end
end

get '/users/:id/issues' do
  @user = User.find(session[:user_id])
  @issues = Issue.where(user_id: @user.id)
  erb :issues
end

delete '/logout' do
  session.clear
  redirect '/'
end
