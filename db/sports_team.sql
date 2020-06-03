DROP TABLE games;
DROP TABLE players;
DROP TABLE teams;

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  slogan VARCHAR(255)
);

CREATE TABLE players (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  country VARCHAR(255),
  points_won INT,
  team INT REFERENCES teams(id)
);

CREATE TABLE games (
  id SERIAL PRIMARY KEY,
  date VARCHAR(255),
  home_team INT REFERENCES teams(id),
  away_team INT REFERENCES teams(id),
  home_result INT,
  away_result INT,
  result VARCHAR(255),
  scorers VARCHAR(255)
);


--  REMEMBER to add ON DELETE CASCASE
