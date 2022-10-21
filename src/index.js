const express = require("express")
const cors = require("cors")
// libary utk membaca request header dar user
const bearerToken = require('express-bearer-token')

const port = 2000

// konfigurasi dengan express nya dulu
const app = express()
// menjalankan middleware
app.use(cors())
app.use(express.json())
app.use(bearerToken())

// agar front-end dpt mengakses langsung file gambar kita melalui url
// app.use(express.static('public')) // static : akan memberikan akses kepada front-end memalui url utk langsung mengakses file pada folder publik yg kita pilih
app.use("/post_images", express.static(`${__dirname}/public/post_images`))
app.use("/profile_images", express.static(`${__dirname}/public/profile_images`))

const {sequelize} = require("./lib/sequelize")
// sequelize.sync({ alter: true })

const {usersRoute, uploadRouter, commentRouter, likeRouter} = require("./routes")

//utk users
app.use("/users", usersRoute)
app.use("/post", uploadRouter)
app.use("/comment", commentRouter)
app.use("/like", likeRouter)


//menjalankan port
app.listen(port, () => console.log("API running :" , port))