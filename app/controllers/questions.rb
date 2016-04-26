get '/questions/new' do
  @categories = Category.all
  @student = User.find(session[:user_id])
  erb :question
end

post '/questions' do

end
