--1:
SELECT MAX(points) from teams;  -- wyświetla maxymalną ilośc punktów

SELECT name from teams WHERE id=1;  -- wyświetla nazwę drużyny z id=1 - największa ilość punktow

SELECT name from teams WHERE points = (SELECT MAX(points) from teams); -- zagnieżdżone selecty

--2
SELECT id, name, points from teams ORDER BY points DESC; -- sortowanie wg puntków malejąco

--3
SELECT t2.name AS name_home, team_home_goals, t.name AS name_away, team_away_goals FROM games LEFT JOIN teams t ON t.id=games.team_away LEFT JOIN teams t2 ON t2.id=games.team_home WHERE team_home=(SELECT id from teams WHERE name='Naprzód Brwinów');

--4
SELECT t2.name AS name_home, team_home_goals, t.name AS name_away, team_away_goals FROM games LEFT JOIN teams t ON t.id=games.team_away LEFT JOIN teams t2 ON t2.id=games.team_home WHERE team_away=(SELECT id from teams WHERE name='Naprzód Brwinów');

--5
SELECT t2.name AS name_home, team_home_goals, t.name AS name_away, team_away_goals FROM games LEFT JOIN teams t ON t.id=games.team_away LEFT JOIN teams t2 ON t2.id=games.team_home WHERE team_away=(SELECT id from teams WHERE name='Naprzód Brwinów') OR team_home=(SELECT id from teams WHERE name='Naprzód Brwinów');

--6
SELECT SUM(team_home_goals) FROM games LEFT JOIN teams t ON t.id=games.team_away LEFT JOIN teams t2 ON t2.id=games.team_home WHERE team_home=(SELECT id from teams WHERE name='Naprzód Brwinów');
SELECT SUM(team_away_goals) FROM games LEFT JOIN teams t ON t.id=games.team_away LEFT JOIN teams t2 ON t2.id=games.team_home WHERE team_away=(SELECT id from teams WHERE name='Naprzód Brwinów');