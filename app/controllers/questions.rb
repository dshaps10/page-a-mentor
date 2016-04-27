get '/users/:id/questions/new' do
  @categories = Category.all
  @student = User.find(session[:user_id])
  erb :question
end

post '/users/:id/questions' do
  user = User.find(session[:user_id])
  category = Category.find(params[:category])

  user.issues.create(category_id: category.id,
                     summary: params[:summary],
                     details: params[:details],
                     location: params[:location])
  redirect "/users/#{user.id}/questions"
end

get '/users/:id/questions' do
  @user = User.find(params[:id])
  @issues = Issue.where(user_id: @user.id)
  erb :issues
end
