get '/users/:id/questions/new' do
  @categories = Category.all
  @student = User.find(params[:id])
  erb :question
end

post '/users/:id/questions' do
  user = User.find(params[:id])
  category = Category.find(params[:category])

  issue = user.issues.create(category_id: category.id,
                     summary: params[:summary],
                     details: params[:details],
                     location: params[:location])
  msg = <<-HEREDOC
  Student Name:
  #{user.first_name} #{user.last_name} (#{user.phase})

  Category:
  #{issue.category.title}

  Summary:
  #{issue.summary}

  Details:
  #{issue.details}

  Where Am I:
  #{issue.location}

  HEREDOC
  # "Summary: #{issue.summary}, Details: #{issue.details}, Where am I: #{issue.location}"

  @client = Twilio::REST::Client.new ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN']

  message = @client.account.messages.create(:body => msg,
    :to => "+14152461132",
    :from => "+17328677939")
  puts message.sid

  redirect "/users/#{user.id}/questions"
end

get '/users/:id/questions' do
  @user = User.find(params[:id])
  @issues = Issue.where(user_id: @user.id)
  erb :issues
end
