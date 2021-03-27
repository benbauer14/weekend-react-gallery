const express = require('express');
const router = express.Router();
const pool = require('../modules/pool');

// DELETE picture
router.delete('/:id', (req, res) => {
    const sqlText = `DELETE FROM gallery WHERE "id"=$1;`;
    console.log(req.params.id)
    pool.query(sqlText, [req.params.id])
        .then((result) => {
            res.sendStatus(200);
        })
        .catch((error) => {
            console.log(`Error making database query ${sqlText}`, error);
            res.sendStatus(500);
        });
});



// GET gallery
router.get('/', (req, res) => {
    const sqlText = `SELECT * FROM gallery`;
    pool.query(sqlText)
        .then((result) => {
            res.send(result.rows);
        })
        .catch((error) => {
            console.log(`Error making database query ${sqlText}`, error);
            res.sendStatus(500);
        });
});

// POST gallery
router.post('/', (req, res) => {
    const path = req.body.path;
    const description = req.body.description
    const likes = req.body.likes
    const sqlText = `INSERT INTO gallery (path, description, likes) VALUES ($1, $2, $3)`;

    pool.query(sqlText, [path, description, likes])
        .then((result) => {
            res.sendStatus(201);
        })
        .catch((error) => {
            console.log(`Error making database query ${sqlText}`, error);
            res.sendStatus(500);
        });
});

module.exports = router;