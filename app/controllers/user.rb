get '/users/new' do
  erb :'/users/new'
end

get '/users/login' do
  erb :'/users/login'
end

post '/users/new' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect to ('/')
  else
    erb :'/users/new'
  end
end
