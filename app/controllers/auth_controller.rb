get '/' do
  erb :'login/login'
end

post '/' do
  user = User.find_by(email: params[:email])

  if user.try(:authenticate, params[:password])
    session[:user_id] = user.id
  else
    redirect '/'
  end

  redirect '/menu'
end

get '/signup' do
 erb :'login/signup'
end

post '/signup' do
  user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])

  if user.save
    session[:user_id] = user.id
    redirect '/menu'
  else
    redirect '/signup'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end