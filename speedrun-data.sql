create database speedrun;
use speedrun;
drop table if exists players;
drop table if exists games;

create table players (
	runnerID int,
	runnerName varchar(255),
    runnerNationality varchar(255),
    leaderboardPosition int,
    runTime time,
    runDate datetime,
    gameID int not null,
    primary key (runnerID),
    foreign key (gameID) references games(gameID));
    
create table games (
	gameID int not null,
    gameName varchar(255),
    gameGenre varchar(255),
    primary key (gameID));
    
insert into games (gameID, gameName, gameGenre) values ("1", "Celeste", "Platformer");
insert into games (gameID, gameName, gameGenre) values ("2", "Ultrakill", "FPS");
insert into games (gameID, gameName, gameGenre) values ("3", "Super Mario 64", "Platformer");
insert into games (gameID, gameName, gameGenre) values ("4", "Hitman Trilogy", "Stealth");

insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("1", "secureaccount", "USA", "1", "00:25:19", "2023-08-13", "1");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("2", "Isaactayy", "UK", "2", "00:25:59", "2022-11-19", "1");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("3", "Kezaron", "Uganda", "3", "00:26:10", "2023-08-13", "1");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("4", "Zkad", "Argentina","4", "00:26:14", "2023-01-20", "1");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("5", "Marlin", "Germany", "5", "00:25:19", "2023-08-13", "1");

insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("6", "Ussom", "Poland", "1", "00:09:14", "2023-11-12", "2");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("7", "wrkk", "Australia", "2", "00:09:49", "2023-11-11", "2");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("8", "sillypilly", "USA", "3", "00:10:10", "2023-07-06", "2");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("9", "cynkcaj", null,"4", "00:10:31", "2023-05-28", "2");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("10", "Vjs0", "Chile", "5", "00:10:41", "2023-03-26", "2");

insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("11", "Karin", "Japan", "1", "01:36:48", "2023-10-21", "3");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("12", "marlene", null, "2", "01:37:03", "2023-10-22", "3");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("13", "Liam", "USA", "3", "01:37:17", "2023-11-23", "3");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("14", "puncayshun", "USA","4", "01:37:34", "2023-10-12", "3");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("15", "Weegee", "USA", "5", "01:37:35", "2022-11-18", "3");

insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("16", "Zionicle", "USA", "1", "00:19:08", "2023-01-13", "4");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("17", "GenP", "Kazakhstan", "2", "00:19:17", "2023-05-17", "4");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("18", "MrKaKoss", "Estonia", "3", "00:20:07", "2023-09-28", "4");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("19", "Scruffyy", "Ireland","4", "00:20:14", "2023-01-10", "4");
insert into players (runnerID, runnerName, runnerNationality, leaderboardPosition, runTime, runDate, gameID) values ("20", "YaBoyRTZ", "USA", "5", "00:30:10", "2023-07-14", "4");

select *
from players
inner join games on players.gameID = games.gameID;
