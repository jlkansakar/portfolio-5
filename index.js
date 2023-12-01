const express = require("express");
const mysql = require("mysql2");
const app = express();
const port = 3001;


// The info might have to be changed to work when checking code @benjamin/@nicklas - unsure.
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Mkansakar12098",
    database: "speedrun"
});

// check to see if connection is good.
connection.connect((error) => {
    if (error) {
        console.log("Error")
    } else {
        console.log("Connected")
    }
});

// list of all games
connection.query("select * from games", function (error, result) {
    if (error) throw error;
    app.get("/gamelist", (req, res) => {
        res.send(result)
    })
});

// list of all players
connection.query("select * from players", function (error, result) {
    if (error) throw error;
    app.get("/playerlist", (req, res) => {
        res.send(result)
    })
});

// list of Celeste players
connection.query("select * from players inner join games on players.gameID = games.gameID where games.gameID = 1", function (error, result) {
    if (error) throw error;
    app.get("/playerlist/celeste", (req, res) => {
        res.send(result)
    })
});

// list of Ultrakill players
connection.query("select * from players inner join games on players.gameID = games.gameID where games.gameID = 2", function (error, result) {
    if (error) throw error;
    app.get("/playerlist/ultrakill", (req, res) => {
        res.send(result)
    })
});

// list of Super Mario 64 players
connection.query("select * from players inner join games on players.gameID = games.gameID where games.gameID = 3", function (error, result) {
    if (error) throw error;
    app.get("/playerlist/supermario64", (req, res) => {
        res.send(result)
    })
});

// list of Hitman Trilogy players
connection.query("select * from players inner join games on players.gameID = games.gameID where games.gameID = 4", function (error, result) {
    if (error) throw error;
    app.get("/playerlist/hitmantrilogy", (req, res) => {
        res.send(result)
    })
});

// list of nationalities and the sum of appearances.

connection.query("select nationalityName, count(players.nationalityID) as amountOfPlayers from nationality inner join players on nationality.nationalityID = players.nationalityID group by players.nationalityID",
    function (error, result) {
    if (error) throw error;
    app.get("/playerlist/nationalitylist", (req, res) => {
        res.send(result)
    })
});



// full list of all entities combined.
connection.query("select * From players inner join games on players.gameID = games.gameID inner join nationality on players.nationalityID = nationality.nationalityID", function (error, result) {
    if (error) throw error;
    app.get("/combinedlist", (req, res) => {
        res.send(result)
    })
});

// a check to see if connection is good.
app.listen(port, () => {
    console.log(`speedrun is listening on port ${port}`)
});

