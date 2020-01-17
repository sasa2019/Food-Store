const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const jwt = require('jsonwebtoken');

app.use(bodyParser.json());



const getAllClients = (req, res) => {
    const con = global.Application.get('CONNECTION')
    const sql = `SELECT * FROM clients`
    con.query(sql, (err, result, fields) => {
        if (err) {
            res.json({ state: 'error', message: err.message })
        } else {
            if (result.length > 0) {
                res.json({ state: 'success-all', message: result })
            } else {
                res.json({ state: 'error', message: `No results!!!` })
            }
        }
    })
}

const newClient = (req, res) => {
    console.log('newClient');
   const  { firstName, lastName, Email, IDnumber, Password, City, Address, } = req.body;
   const con = global.Application.get('CONNECTION')
    const sql = `INSERT INTO clients (firstName, lastName, Email, IDnumber, Password, City, Address) VALUES ('${firstName}', '${lastName}', '${Email}', '${IDnumber}', '${Password}', '${City}', '${Address}');`
    console.log(sql);
    con.query(sql, (err, result, fields) => {
        console.log(err);
        console.log(result);
        console.log(fields);
        if (err) {
            res.json({ state: 'error', message: err.message })
        } else {
            const cartSql = `INSERT INTO shoppingcart (clientID) VALUES ('${IDnumber}');`
            console.log(cartSql);
            con.query(cartSql, (err, result, fields) => {
                console.log(result);
                if (err) {
                    res.json({ state: 'error', message: err.message })
                } else {                   
                    res.json({ state: 'success-all', message: result })
                }
            })            
        }
    })
}

const getStore = (req, res) => {
    const con = global.Application.get('CONNECTION')
    const sql = `SELECT * FROM products WHERE CategoryID`
    con.query(sql, (err, result, fields) => {
        if (err) {
            res.json({ state: 'error', message: err.message })
        } else {
            if (result.length > 0) {
                res.json({ state: 'success-all', message: result })
            } else {
                res.json({ state: 'error', message: `No results!!!` })
            }
        }
    })
}



module.exports = {
    
    getAllClients,
    newClient,
    getStore,

}



