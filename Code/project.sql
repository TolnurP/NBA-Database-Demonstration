
# Adding Primary key constraint in play_data table
Alter table NBA.play_data
 	add primary key(play_id);
# Adding Primary key constraint in games table
Alter table nba.games
Add primary key(game_id);
# Creating a new table season  
CREATE TABLE `nba`.`season` (select ROW_NUMBER() OVER(ORDER BY seasonStartYear) as season_id, seasonStartYear 
from nba.coaches
group by seasonStartyear
);
# Creating coach table 
CREATE TABLE `nba`.`coach_details` (select distinct coach_id,coachName,coachType
from nba.coaches
);
# deleting coachName from coaches table 
Alter table nba.coaches
drop column coachName;
# deleting coachType from coaches table 
Alter table nba.coaches
drop column coachType;

# Adding primary key constraint to coaches table
Alter table nba.coaches
add primary key(coach_id,seasonStartYear);
# Adding primary key constraint to coache_details table
Alter table nba.coach_details
Add primary key (coach_id);
# Adding primary key constraint to season table
Alter table nba.season
Add primary key(seasonStartYear);
# Adding foreign constraint to play_data table
Alter table nba.play_data
 add foreign key(game_id) references games(game_id);

 
 #Modifying the column playerName datatype to VARCHAR(255)  in the tables in salaries, player_info and boxscores 
Alter table player_info
modify column playerName varchar(255);
Alter table boxscore
Modify column playerName varchar(255);
 Alter table nba.salaries
 modify column playerName VARCHAR(255);
 #Adding primary key constraint to player_info table
 Alter table nba.player_info
 add primary key(playerName);
 #Adding primary key constraints to the columns seasonStartYear and playerName in salaries table 
Alter table nba.salaries
Add primary key(seasonStartYear,playerName);
#Adding a new column box_id to the box Score 1
 CREATE TABLE nba.boxscore_1 (
 Select Row_Number() over(order by game_id) as 
 box_id,game_id,teamName,playerName,MP,FG,FGA,3P,3PA,FT,FTA,ORB,DRB,TRB,AST,STL,BLK,TOV,PF,PTS,'+/-',isStarter
 
from boxscore);
Drop table nba.boxscore;
create table boxscore
select * from nba.boxscore_1;
Drop table boxscore_1;
#Adding a primary key constraint to boxscore
Alter table nba.boxscore
add primary key (box_id);
 #Adding foreigh key constraint to box score
 SET FOREIGN_KEY_CHECKS=0; 
 Alter table nba.boxscore
 add foreign key(playerName) references player_info(playerName);
#Adding foreigh key constraint to salaries
 Alter table nba.salaries
 add foreign key(playerName) references player_info(playerName);
 
