const express = require('express')
const router = express.Router()
const handlers = require('../handlers')


//Clients



router.get('/store' , (req,res) => {
    handlers.getStore(req,res)
})

router.post('/register' , (req,res) => {
    handlers.newClient(req,res)
})

router.get('/' , (req,res) => {
    handlers.getAllClients(req,res)
})









module.exports = router