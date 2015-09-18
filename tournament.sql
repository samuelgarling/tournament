-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP DATABASE tournament;

CREATE DATABASE tournament;

\c tournament

CREATE TABLE players (
	player_id SERIAL PRIMARY KEY,
	name varchar(255) NOT NULL,
	wins int NOT NULL DEFAULT 0 CHECK (wins>=0),
	matches int NOT NULL DEFAULT 0 CHECK (wins>=0)
);

CREATE TABLE matches (
	match_id SERIAL PRIMARY KEY,
	winner int REFERENCES players(player_id),
	loser int REFERENCES players(player_id)
);

CREATE VIEW players_size as SELECT count(*) from players;

CREATE VIEW players_by_wins as SELECT * from players ORDER BY wins DESC;

\q