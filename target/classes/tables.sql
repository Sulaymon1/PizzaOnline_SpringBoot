
CREATE DATABASE java_spring_db;

CREATE ROLE java_spring WITH LOGIN ENCRYPTED PASSWORD '123user';

CREATE TABLE IF NOT EXISTS users(
  id int PRIMARY KEY,
  email VARCHAR UNIQUE,
  enabled BOOLEAN DEFAULT FALSE ,
  hash_password VARCHAR,
  name VARCHAR,
  phone_number VARCHAR UNIQUE,
  role VARCHAR
);


CREATE TABLE IF NOT EXISTS order_address(
  id int PRIMARY KEY,
  domofon VARCHAR,
  floor VARCHAR,
  room_num VARCHAR,
  street VARCHAR,
  user_id int REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS token(
  id int PRIMARY KEY ,
  expire_date date,
  token VARCHAR,
  user_id int REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS report(
  id int PRIMARY KEY,
  email VARCHAR,
  bill int
);

CREATE TABLE IF NOT EXISTS products(
  id int PRIMARY KEY,
  count int,
  description VARCHAR,
  pizza_name VARCHAR,
  price int CHECK (price>0)
);

CREATE TABLE IF NOT EXISTS pizzerias(
  id int PRIMARY KEY ,
  address VARCHAR UNIQUE ,
  name VARCHAR,
  phone_number int
);

CREATE TABLE IF NOT EXISTS orders_for_pizzeria(
  id int PRIMARY KEY,
  pizzeria_id int REFERENCES pizzerias(id),
  user_id int REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS orders(
  id int PRIMARY KEY,
  count int,
  price int,
  pizza_id int REFERENCES pizzerias(id),
  user_id int REFERENCES users(id)
);


GRANT INSERT ON report TO java_spring;
GRANT SELECT ON order_address to java_spring;