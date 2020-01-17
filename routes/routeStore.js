const express = require('express')
const router = express.Router()
const handlers = require('../handlers')



router.get('/store' , (req,res) => {
    handlers.getStore(req,res)
})



module.exports = router