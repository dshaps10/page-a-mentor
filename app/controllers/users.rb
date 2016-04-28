get '/login' do
  if request.xhr?
    erb :'partials/_sign_in', layout: false
  else
    erb :sign_in
  end
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
  if request.xhr?
    erb :'partials/_sign_up', layout: false
  else
    erb :sign_up
  end
end

post '/sign_up' do
  user = User.create(last_name: params[:last_name],
                     first_name: params[:first_name],
                     phase: params[:phase],
                     email: params[:email],
                     password: params[:password])
  redirect "/users/#{user.id}/profile"
end

# get '/users/:id/profile' do
#   @user = User.find(params[:id])
#   if session[:user_id] == @user.id
#     erb :profile
#   else
#     erb :error
#   end
# end

get '/users/:id/profile' do
  @user = User.find(params[:id])
  erb :profile
end

get '/logout' do
  session.clear
  redirect '/'
end
