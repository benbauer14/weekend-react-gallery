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
    const sqlText = `SELECT * FROM gallery ORDER BY id`;
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
            res.sendStatus(200);
        })
        .catch((error) => {
            console.log(`Error making database query ${sqlText}`, error);
            res.sendStatus(500);
        });
});

router.put('/like/', (req, res) => {
    // console.log(req.query.id);
    // console.log(req.query.likes)
    const likes = req.query.likes
    const newlikes = likes*1 + 1; 
    console.log(newlikes) 
    const sqlText = `UPDATE gallery SET "likes"=$1 WHERE "id"=$2`;
    pool.query(sqlText, [newlikes, req.query.id])
    .then((result) => {
        res.send(String(newlikes));
    })
    .catch((error) => {
        console.log(`Error making database query ${sqlText}`, error);
        res.sendStatus(500);
    });
}); // END PUT Route

module.exports = router;