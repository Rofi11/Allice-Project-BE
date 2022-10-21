const express = require('express')
const {uploadController} = require ('../controller')
const router = express.Router()
const fileUploader = require("../helper/uploader")

router.post(
    '/upload',
    fileUploader({
        destinationFolder: "post_images",
        fileType : "image",
        prefix : "POST"
    }).single("image"),
    uploadController.uploadFile
)


router.get('/get/:id', uploadController.getPost) // utk di profile
router.get('/getDetail/:id' , uploadController.getPostDetail)
// router.delete('/delete-post/:id' , uploadController.deletePost)
router.post('/delete-post' , uploadController.deletePost)
router.patch('/edit-caption/:id' , uploadController.editCaption)
router.get('/getAll', uploadController.getAllPost) // utk di home

module.exports = router