require './models/planet'

get '/' do
    planets = all_planet()
    erb :'planets/index', locals: {
        planets: planets
    }
end

get '/planets/new' do
    erb :'planets/new'
end

  post '/planets' do
    name = params['name']
    image_url = params['image_url']
    diameter = params['diameter']
    distance = params['distance']
    mass = params['mass']
    moon_count = params['moon_count']

    create_planet(name, image_url, diameter, distance, mass, moon_count)
    redirect '/'
  end


# the :id is a route parameter
get '/planets/:id/edit' do
  id = params['id']
  planet = get_planet(id)
  
  erb :'planets/edit', locals: {
    planet: planet
  }
end

put '/planets/:id' do
    id = params['id']
    name = params['name']
    image_url = params['image_url']
    diameter = params['diameter']
    distance = params['distance']
    mass = params['mass']
    moon_count = params['moon_count']

    update_planet(id , name, image_url, diameter, distance, mass, moon_count)
    redirect '/'
end

delete '/planets/:id' do
  id = params['id']
  
  delete_planet(id)
  redirect '/'
end

