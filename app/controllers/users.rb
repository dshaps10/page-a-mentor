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

get '/login/new' do
  erb :sign_up
end

post '/login' do
  user = User.new(last_name: params[:last_name],
                  first_name: params[:fist_name],
                  phase: params[:phase],
                  email: params[:email],
                  password: params[:password])
  user.save
  if user.save
    redirect "/users/#{user.id}/profile"
  else
    redirect '/login/new'
  end
end
