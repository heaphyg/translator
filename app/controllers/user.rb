get '/users/new' do
  erb :'/users/new'
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

get '/users/login' do
  erb :'/users/login'
end

post '/users/login' do

  @user = User.where(email: params[:user][:email])[0]
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect to ('/')
  else
    erb :'/users/login'
  end
end

get '/users/logout' do
  session.clear
  redirect to ('/')
end
