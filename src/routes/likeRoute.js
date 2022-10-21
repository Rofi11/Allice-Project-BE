const express = require('express')
const {addLike} = require('../controller/likeController')
const router = express.Router()

router.post('/add-like', addLike)

module.exports = router