def all_planet
  run_sql("SELECT * FROM planets ORDER BY id")
end

def create_planet(name, image_url, diameter, distance, mass, moon_count)
      run_sql("INSERT INTO planets(name, image_url, diameter, distance, mass, moon_count) VALUES($1, $2, $3, $4, $5, $6)", [name, image_url, diameter, distance, mass, moon_count])
end

def get_planet(id)
  run_sql("SELECT * FROM planets WHERE id = $1", [id])[0]
end

def update_planet(id , name, image_url, diameter, distance, mass, moon_count)
    run_sql("UPDATE planets SET name = $2, image_url = $3, diameter = $4, distance = $5, mass = $6, moon_count = $7 WHERE id = $1", [id , name, image_url, diameter, distance, mass, moon_count])
end

def delete_planet(id)
  run_sql("DELETE FROM planets WHERE id = $1", [id])
end