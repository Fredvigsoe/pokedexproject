const express = require('express');
const http = require('http');
const cors = require('cors');
const app = express();
const server = http.createServer(app);
const {response} = require("express");
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors({
    origin: '*'
}));
const mysqlConnection = require("./database");

//GET ALL POKEMON
app.get('/pokedex', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get pokemon by name
app.get('/pokedex/:name', (req, res) => {
    const nameParameter = req.params.name;
    const sql = 'SELECT * FROM `pokedex` WHERE `name` = ?';
    mysqlConnection.execute(sql,[nameParameter], (err, results) => {
        res.json(results);
    })
});


//trainers by ID
app.get('/trainer/:id', (req, res) => {
    const idParameter = req.params.id;
    const sql = 'SELECT * FROM `pokemon_trainer` WHERE `trainer_id` = ?';
    mysqlConnection.execute(sql,[idParameter], (err, results) => {
        res.json(results);
    })
});

//get trainers teams
app.get('/trainer/team/:id', (req, res) => {
    const idParameter = req.params.id;
    const sql = 'SELECT * FROM `trainers_pokemon` WHERE `fk_trainer_id` = ?';
    mysqlConnection.execute(sql,[idParameter], (err, results) => {
        res.json(results);
    })
});

//get random pokemon team
app.get('/random/pokemon/team', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex ORDER BY RAND () LIMIT 6",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get grass types
app.get('/pokedex/type/grass', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 1 OR fk_secondary_type_id = 1",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get water types
app.get('/pokedex/type/water', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 2 OR fk_secondary_type_id = 2",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get fire types
app.get('/pokedex/type/fire', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 3 OR fk_secondary_type_id = 3",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get poison types
app.get('/pokedex/type/poison', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 4 OR fk_secondary_type_id = 4",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get ground types
app.get('/pokedex/type/ground', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 5 OR fk_secondary_type_id = 5",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get ice types
app.get('/pokedex/type/ice', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 6 OR fk_secondary_type_id = 6",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get psychic types
app.get('/pokedex/type/psychic', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 7 OR fk_secondary_type_id = 7",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get ghost types
app.get('/pokedex/type/ghost', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 8 OR fk_secondary_type_id = 8",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get rock types
app.get('/pokedex/type/rock', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 9 OR fk_secondary_type_id = 9",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get Normal types
app.get('/pokedex/type/normal', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 10 OR fk_secondary_type_id = 10",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get dragon types
app.get('/pokedex/type/dragon', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 11 OR fk_secondary_type_id = 11",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get electric types
app.get('/pokedex/type/electric', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 12 OR fk_secondary_type_id = 12",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get flying types
app.get('/pokedex/type/flying', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 13 OR fk_secondary_type_id = 13",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get bug types
app.get('/pokedex/type/bug', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 14 OR fk_secondary_type_id = 14",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

//get fighting types
app.get('/pokedex/type/fighting', (req, res) => {
    mysqlConnection.query(
        "SELECT * FROM pokedex WHERE fk_primary_type_id = 15 OR fk_secondary_type_id = 15",
        (err, results, fields) => {
            if (!err) {
                res.json(results)
            } else {
                console.log(err);
            }
        }
    );
})

server.listen(3000,(port) => {
    console.log('Listening on port ' + server.address().port);
});

module.exports = app;