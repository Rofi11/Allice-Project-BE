const express = require("express")
const router = express.Router()
const {userController} = require("../controller")
const {auth} = require('../helper/authToken')
const fileUploader = require('../helper/uploader')

router.get("/get", userController.getLogin)

router.get("/userKeepLogin", userController.userKeepLogin)

router.post("/register", userController.Register)

router.patch("/edit-profile/:id",
fileUploader({
        destinationFolder : "profile_images",
        fileType : "image",
        prefix : "POST"
    }).single("image"),
    userController.editUsers
)

router.patch("/verified" ,auth, userController.verification)
router.post("/getV2" , userController.getLogin2)

module.exports = router;