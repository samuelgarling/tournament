-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP DATABASE IF EXISTS tournament;

CREATE DATABASE tournament;

\c tournament

-- A table to store the details of the players in the competition.
-- @columns: player_id - An automatically generated id number for a player
-- name - The players name, cannot be NULL.
-- wins - The amount of games the player has won in this tournament.
-- matches - The number of matches the player has participated in.

CREATE TABLE players (
	player_id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	wins int NOT NULL DEFAULT 0 CHECK (wins>=0),
	matches int NOT NULL DEFAULT 0 CHECK (matches>=0)
);

-- A table to store the individual results of each match.
-- @columns: match_id - An automatically generated id number for the match.
-- winner - the player_id of the winner
-- loser - the player_id of the loser.

CREATE TABLE matches (
	match_id SERIAL PRIMARY KEY,
	winner int REFERENCES players(player_id),
	loser int REFERENCES players(player_id)
);

-- A simple view as the count of players is frequently referenced.

CREATE VIEW players_size as 
SELECT count(*) 
from players;

-- A view to show the entire list of players ordered by the amount of games they have
-- won.

CREATE VIEW players_by_wins as 
SELECT * 
from players 
ORDER BY wins DESC;

-- Exits the psql.

\q