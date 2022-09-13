CREATE DATABASE cats_app;

\c cats_app

CREATE TABLE cats (
    id SERIAL PRIMARY KEY,
    name TEXT,
    image_url TEXT, 
    gender TEXT,
    age TEXT,
    user_idd INTEGER
);




CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);

ALTER TABLE users ADD COLUMN password_digest TEXT;