-- Active: 1762506444622@@127.0.0.1@5432@postgres
CREATE EXTENSION IF NOT EXISTS postgis;
DROP TABLE IF EXISTS places;
CREATE TABLE places (
  id SERIAL PRIMARY KEY,
  name TEXT,
  geom GEOMETRY(Point, 4326)
);

INSERT INTO places (name, geom) VALUES
 ('Frankfurt', ST_SetSRID(ST_MakePoint(8.6821,50.1109),4326)),
 ('Wiesbaden', ST_SetSRID(ST_MakePoint(8.2398,50.0782),4326)),
 ('Mainz', ST_SetSRID(ST_MakePoint(8.2473,49.9929),4326));
