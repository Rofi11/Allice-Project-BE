//middleware utk menterjemahkan token
const { response } = require('express')
const jwt = require('jsonwebtoken')

module.exports = {
    auth : (req, res ,next) => {
        // proses authentication / verifikasi
            // req.token yg akan di dapatkan dari front-end from headers nya, dari bearer token yg menagkap index.js
        jwt.verify(req.token , "private123" , (err , decode) => {
            if(err) {
                return res.status(401).send("user not auth!")
            }
            // jka berhasil
            req.user = decode // decode adalah hasil dari penerjemahan token nya

            next() // diteruskan ke controller
        })

    }
}

//  dicoding : utk menerjemahkan token nya ==> harus menggunakan pakai private key yg sama, kalo tidk sama tidak bisa diterjemahkan
    // ini adalah middleware dicoding

    // req : digunakan urk membaca req dari users
    // res : utk memberikan response
    // next : berguna utk melanjutkan ke middleware berikut nya