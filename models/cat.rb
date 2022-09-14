def all_cat
  run_sql("SELECT * FROM cats ORDER BY id")
end

def create_cat(name, image_url, gender, age, owner_id)
      run_sql("INSERT INTO cats(name, image_url, gender, age, owner_id) VALUES($1, $2, $3, $4, $5)", [name, image_url, gender, age, owner_id])
end

def get_cat(id)
  run_sql("SELECT * FROM cats WHERE id = $1", [id])[0]
end

def update_cat(id ,name, image_url, gender, age)
    run_sql("UPDATE cats SET name = $2, image_url = $3, gender = $4, age = $5 WHERE id = $1", [id , name, image_url, gender, age])
end

def delete_cat(id)
  run_sql("DELETE FROM cats WHERE id = $1", [id])
end

def search_cat(age, gender)
  # run_sql("SELECT * FROM cats WHERE age = $1 AND gender = $2",[age, gender])[0]
  search_Cati = run_sql("SELECT * FROM cats WHERE age = $1 AND gender = $2",[age, gender])
  if search_Cati.to_a.count > 0
    run_sql("SELECT * FROM cats WHERE age = $1 AND gender = $2",[age, gender])[0]
  else
    nil
  end
end 

def profile_cat(owner_id)
  run_sql("SELECT * FROM cats WHERE owner_id= $1",[owner_id])
end 