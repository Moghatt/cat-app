get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  email = params['email']
  password = params['password']

  user = find_user_by_email(email)

  # use bycryt to check pass is correct
  if user && BCrypt::Password.new(user['password_digest']) == password
    # logged user in
    session['user_id'] = user['id']
    
    redirect '/'
  else
    "Wrong Password or Email Try again please"
  end
end

delete '/sessions' do
  session['user_id'] = nil

  redirect '/'
end