def all_cat
  run_sql("SELECT * FROM cats ORDER BY id")
end

def create_cat(name, image_url, gender, age)
      run_sql("INSERT INTO cats(name, image_url, gender, age) VALUES($1, $2, $3, $4)", [name, image_url, gender, age])
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