#Deleting a existing record with Bad Data
DELETE FROM nba.games 
WHERE game_id = 'twosix';

#Deleting a existing record with Good Data
DELETE FROM nba.games 
WHERE game_id = 265100;

#Inserting a record with Good Data
INSERT INTO nba.salaries (playerName, seasonStartYear, salary, InflationAdjSalary)
VALUES ("Tony Stark", 2022, 1000000, 1200000);

#Insertign a record with Bad Data
INSERT INTO nba.salaries (playerName, seasonStartYear, salary, InflationAdjSalary)
VALUES ("Roger Green", "twentytwentytwo", 10000, 12000);

#Updating a record with Good Data
UPDATE nba.player_info 
SET Colleges = "UNC Charlotte" 
WHERE playerName = "Bud_Acton";

#Updating a record with Bad Data
UPDATE nba.player_info 
SET Colleges = 1234567 
WHERE playerName = "Don_Adams";

#Updating a record with Good Data.
UPDATE nba.coaches 
SET Age = 55 
WHERE coach_id = 3 ;

#Updating a record with Bad Data.
UPDATE nba.coaches 
SET Age = "Fifty" 
WHERE coach_id = 4;

DELIMITER //

#Function implementation 
CREATE FUNCTION fetchPlayerSalary (pname varchar(255), ssyear int)
RETURNS TEXT
DETERMINISTIC READS SQL DATA
BEGIN
	DECLARE playerSalary TEXT;
    
Select nba.salary 
INTO playerSalary 
FROM nba.salaries 
WHERE playerName = pname AND seasonStartYear = ssyear;

RETURN playerSalary;
END//

#Good Data
SELECT fetchPlayerSalary("Bob_Sura",1996);

#Bad Data
SELECT fetchPlayerSalary("Bob_king",1996);

#Procedure Implementation
DELIMITER //

#stored procedure that returns a aggregate result
CREATE PROCEDURE getpointsHome (ssYear INT)

BEGIN

SELECT homeTeam, max(pointsHome) AS Max_HomePoints, seasonStartYear 
FROM nba.games 
WHERE seasonStartYear = ssyear
GROUP BY homeTeam
ORDER BY Max_HomePoints DESC;

END //

#Good Data
CALL getpointsHome("1996");

#Bad Data
CALL getpointsHome("Ninetyninetysix");

