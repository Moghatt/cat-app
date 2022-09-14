require './models/cat'

get '/' do
    cats = all_cat()
    # owner_id = session['user_id']
    # owner_cats = profile_cat(owner_id)
    erb :'cats/index', locals: {
        cats: cats
    }
end

get '/cats/new' do
    erb :'cats/new'
end

  post '/cats' do
    name = params['name']
    image_url = params['image_url']
    gender = params['gender']
    age = params['age']
    owner_id = session['user_id']
 

    create_cat(name, image_url, gender, age, owner_id)
    redirect '/'
  end


# the :id is a route parameter
get '/cats/:id/edit' do
  id = params['id']
  cat = get_cat(id)
  
  erb :'cats/edit', locals: {
    cat: cat
  }
end

put '/cats/:id' do
    name = params['name']
    image_url = params['image_url']
    gender = params['gender']
    age = params['age']

    update_cat(id , name, image_url, gender, age)
    redirect '/'
end

delete '/cats/:id' do
  id = params['id']
  
  delete_cat(id)
  redirect '/'
end

get '/cats/search' do
  gender = params['gender']
  age = params['age']

  search_cat = search_cat(age, gender)
  erb :'cats/search', locals: {
    search_cat: search_cat
  }

end


get '/cats/profile' do

    owner_id = session['user_id']
    owner_cats = profile_cat(owner_id)
        erb :'cats/profile', locals: {
        owner_Cats: owner_cats
    }
  # gender = params['gender']
  # age = params['age']
  # owner_id = session['user_id']
  
  # "hello world"

  #  profile_cat=profile_cat(age, gender)

  #   erb :'cats/profile', locals: {
  #   profile_cat: profile_cat
  # }
end

