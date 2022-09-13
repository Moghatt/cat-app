CREATE DATABASE planets_app;

\c planets_app

CREATE TABLE planets (
    id SERIAL PRIMARY KEY,
    name TEXT,
    image_url TEXT, 
    diameter REAL,
    distance REAL,
    mass REAL,
    moon_count INTEGER
);

INSERT INTO planets(name, image_url, diameter, distance, mass, moon_count)
VALUES('Mercury', 'https://media.istockphoto.com/id/1295829498/photo/mercury-elongation-4k-footage.webp?s=612x612&w=is&k=20&c=MCIjrwZJyeBSrR3cd9mNmnIGsWBKosV8hgLeqeo9Fos=', 0, 0, 0, 1);

INSERT INTO planets(name, image_url, diameter, distance, mass, moon_count)
VALUES('Earth', 'https://images.unsplash.com/photo-1564053489984-317bbd824340?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=596&q=80', 1e5, 1E3, 0, 1);


CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
);

ALTER TABLE users ADD COLUMN password_digest TEXT;