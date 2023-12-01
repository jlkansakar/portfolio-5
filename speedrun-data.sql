drop schema if exists speedrun;
create database speedrun;
use speedrun;
drop table if exists players;
drop table if exists games;
drop table if exists nationality;

create table games (
	gameID int not null,
    gameName varchar(255),
    gameGenre varchar(255),
    primary key (gameID));
    
create table nationality (
	nationalityID int,
    nationalityName varchar(255),
    primary key (nationalityID));

create table players (
	runnerID int,
	runnerName varchar(255),
    nationalityID int not null,
    leaderboardPosition int,
    runTime time,
    runDate datetime,
    gameID int not null,
    primary key (runnerID),
    foreign key (gameID) references games(gameID),
    foreign key (nationalityID) references nationality(nationalityID));
    
    
insert into games (gameID, gameName, gameGenre) values ("1", "Celeste", "Platformer");
insert into games (gameID, gameName, gameGenre) values ("2", "Ultrakill", "FPS");
insert into games (gameID, gameName, gameGenre) values ("3", "Super Mario 64", "Platformer");
insert into games (gameID, gameName, gameGenre) values ("4", "Hitman Trilogy", "Stealth");

insert into nationality (nationalityID, nationalityName) values ("1", "USA");
insert into nationality (nationalityID, nationalityName) values ("2", "UK");
insert into nationality (nationalityID, nationalityName) values ("3", "Uganda");
insert into nationality (nationalityID, nationalityName) values ("4", "Argentina");
insert into nationality (nationalityID, nationalityName) values ("5", "Germany");
insert into nationality (nationalityID, nationalityName) values ("6", "Poland");
insert into nationality (nationalityID, nationalityName) values ("7", "Australia");
insert into nationality (nationalityID, nationalityName) values ("8", "Chile");
insert into nationality (nationalityID, nationalityName) values ("9", "Japan");
insert into nationality (nationalityID, nationalityName) values ("10", "Kazakhstan");
insert into nationality (nationalityID, nationalityName) values ("11", "Estonia");
insert into nationality (nationalityID, nationalityName) values ("12", "Ireland");
insert into nationality (nationalityID, nationalityName) values ("13", null);

select *
from nationality;

insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("1", "secureaccount", "1", "1", "00:25:19", "2023-08-13", "1");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("2", "Isaactayy", "2", "2", "00:25:59", "2022-11-19", "1");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("3", "Kezaron", "3", "3", "00:26:10", "2023-08-13", "1");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("4", "Zkad", "4","4", "00:26:14", "2023-01-20", "1");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("5", "Marlin", "5", "5", "00:25:19", "2023-08-13", "1");

insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("6", "Ussom", "6", "1", "00:09:14", "2023-11-12", "2");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("7", "wrkk", "7", "2", "00:09:49", "2023-11-11", "2");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("8", "sillypilly", "1", "3", "00:10:10", "2023-07-06", "2");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("9", "cynkcaj", "13","4", "00:10:31", "2023-05-28", "2");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("10", "Vjs0", "8", "5", "00:10:41", "2023-03-26", "2");

insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("11", "Karin", "9", "1", "01:36:48", "2023-10-21", "3");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("12", "marlene", "13", "2", "01:37:03", "2023-10-22", "3");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("13", "Liam", "1", "3", "01:37:17", "2023-11-23", "3");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("14", "puncayshun", "1","4", "01:37:34", "2023-10-12", "3");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("15", "Weegee", "1", "5", "01:37:35", "2022-11-18", "3");

insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("16", "Zionicle", "1", "1", "00:19:08", "2023-01-13", "4");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("17", "GenP", "10", "2", "00:19:17", "2023-05-17", "4");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("18", "MrKaKoss", "11", "3", "00:20:07", "2023-09-28", "4");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("19", "Scruffyy", "12","4", "00:20:14", "2023-01-10", "4");
insert into players (runnerID, runnerName, nationalityID, leaderboardPosition, runTime, runDate, gameID) values ("20", "YaBoyRTZ", "1", "5", "00:30:10", "2023-07-14", "4");

select *
from players
inner join nationality on players.nationalityID = nationality.nationalityID
inner join games on players.gameID = games.gameID;
