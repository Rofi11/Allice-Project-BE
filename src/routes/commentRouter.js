const express = require("express")
const router = express.Router()
const {commentController} = require('../controller')

router.get("/get/:id", commentController.getPostComment)
router.post("/uploadcomment", commentController.postcomment)

module.exports = router