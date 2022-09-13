require './models/cat'

get '/' do
    cats = all_cat()
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
   

    create_cat(name, image_url, gender, age)
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

