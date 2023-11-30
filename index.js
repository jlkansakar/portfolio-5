const express = require("express");
const app = express();
const port = 3001;
const mysql = require("mysql2");

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Mkansakar12098",
    database: "speedrun"
});

connection.connect((error) => {
    if (error) {
        console.log("Error")
    } else {
        console.log("Connected")
    }
});


app.get("/list", (req, res) => {
    res.send("Hello World!")

});

connection.connect(function(error) {
    if (error) throw error;
    console.log("Connected");
    connection.query("select * From players inner join games on players.gameID = games.gameID", function (error, result) {
        if (error) throw error;
        app.get("/biglist", (req, res) => {
            res.send(result)
        })
    })
});

app.listen(port, () => {
    console.log(`speedrun is listening on port ${port}`)
});
// commit force
