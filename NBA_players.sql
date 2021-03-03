CREATE TABLE Salaries (
Player VARCHAR PRIMARY KEY,
Tm VARCHAR,
season17_18_salary INT);

CREATE TABLE PerInfo (
Player VARCHAR PRIMARY KEY,
PER FLOAT);

CREATE TABLE DraftInfo (
	Player VARCHAR PRIMARY KEY,
	Team VARCHAR,
	draft_year VARCHAR,
	draft_round VARCHAR,
	draft_number VARCHAR)

SELECT * FROM perinfo;

SELECT * FROM salaries;

SELECT * FROM draftinfo;

SELECT draftinfo.player, perinfo.per, draftinfo.team, draftinfo.draft_year, draftinfo.draft_round, draftinfo.draft_number,salaries.season17_18_salary
FROM draftinfo
JOIN salaries 
ON draftinfo.player = salaries.player
JOIN perinfo
ON perinfo.player = salaries.player



-- ALTER TABLE salaries
-- RENAME COLUMN Player to players;

-- SELECT per_info.players, per_info.teams, per_info.PER, salaries.Player, salaries.season17_18
-- FROM salaries
-- INNER JOIN per_info ON
-- per_info.players = salaries.Player