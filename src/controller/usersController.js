const {db , dbQuery} = require("../database")
const {uploader} = require('../helper/uploader')
const {createToken} = require('../helper/createToken')
const transporter = require('../helper/nodemailer')
const Crypto = require('crypto')
const fs = require('fs')
const {Users} = require('../lib/sequelize')

module.exports = {
    getLogin: async (req,res) => {
        //berhasil ==> pakai method get
        // hashing password lagi, karena data di database itu berupa yg sudah di hashing
        console.log(req.query.user_email);
        console.log(req.query.password);
        
        let user_email = req.query.user_email
        let password = req.query.password
        password = Crypto.createHmac("sha1" , "hash123").update(password).digest("hex")
        console.log(password);
        
        let sqlQuery = "SELECT * FROM Users where (username ='"+ user_email +"' or email = '"+ user_email +"' ) and password = '" + password +"'" ;
        // let sqlQuery = `SELECT * FROM Users where (username = ${db.escape(user_email)} or email = ${db.escape(user_email)}  ) and password = ${db.escape(password)} `;

        console.log(sqlQuery);
        // akses sql
        // const resDb = await dbQuery(sqlQuery)
        // res.send(resDb)
        db.query(sqlQuery , (err , results) => {
            if(err)res.status(500).send(err)
            console.log(results[0]);
            // jika berhasil
            if (results[0]){
                let {idusers, fullname , username , email ,password , role , fotoProfile , bio, status} = results[0]
                let token = createToken({idusers, fullname , username , email ,password , role , fotoProfile , bio, status})
                console.log(status);

                if(status != "verified"){
                    res.status(200).send({message: "Your Account not Verified"})
                } else {
                    res.status(200).send({
                        dataLogin : results[0],
                        token,
                        message : "Login Success"
                    })
                }
            }
        })
    },
    userKeepLogin : async (req, res) => {
        // console.log(req.body);
        console.log(req.query.id);
        let id = req.query.id
        // console.log(id);
        let sqlQuery = `select * from users where id = ${id};`
        // console.log(sqlQuery);
        const resDb = await dbQuery(sqlQuery)
        res.send(resDb)
        //akses db
        // db.query(sqlQuery,(req, res) => {
        //     if(err){
        //         res.status(500).send(console.log(err));
        //     }
        //     res.status(200).send("keep login")
        // })
    },
    Register : async (req, res) => {
        // console.log(req.body);
        const data = await (req.body)
        // utk hashing password utk keamanan authenthication
        data.password = Crypto.createHmac("sha1", "hash123").update(data.password).digest("hex") // akan menghasilkan password baru yg sudah di hashing
        let sqlQuery = `insert into users values (null, ${db.escape(data.fullname)} , ${db.escape(data.username)} , ${db.escape(data.email)}, ${db.escape(data.password)} , ${db.escape(data.role)} , ${db.escape(data.fotoProfile)},${db.escape(data.bio)}, ${db.escape(data.status)})` 
        console.log(sqlQuery);
        // const resDb = await dbQuery(sqlQuery)
        // return res.send(resDb)
        db.query(sqlQuery, (err , results) => {
            // jika error
            if (err) {
                console.log(err);
                res.status(500).send(err)
            }
            // jika insert data berhasil, dari results nya akan ada id, dan di pakai pengkondisian
            console.log(results.insertId);
            if (results.insertId) {
                let sqlGet = `select * from users where id = ${results.insertId}`
                // jalankan query
                db.query(sqlGet , (err2 , results2) => {
                    console.log(results2[0]);
                    if(err2){
                        console.log(err);
                        res.status(500).send(err2)
                    }
                    // bahan utk membaut token
                    let {id, fullname , username , email ,password , role , fotoProfile , bio, status} = results2[0]
                    // membuat tokennya
                    let token = createToken({id, fullname , username , email ,password , role , fotoProfile , bio, status})

                    // mengirimkan email verification pada user
                    let mail = {
                        // berisi properties configuration utk nodemailer
                        from : 'Admin <rofimuhamad0381@gmail.com>',
                        to : `${email}`, // kirim ke email yg di database
                        subject : 'Account Verification',
                        html : `<a href = 'http://localhost:3000/authentication/${token}'> click here for verification your account</a>` // routenya nanti disamakan di sisi front-end nya juga
                    }
                    // kirim email
                    transporter.sendMail(mail , (errMail , resMail) => {
                        // jika gagal
                        if(errMail){
                            console.log(errMail);
                            res.status(500).send({
                                message:"Registration failed",
                                success : false,
                                err : errMail
                            })
                        }
                        // jika berhasil
                        res.status(200).send({
                            message: "Registration Success , Check Your Email",
                            success : true 
                        })
                    })
                })
            }
        })
    },
    verification : (req, res) => {
        console.log(req.user);
        let updateQuery = `Update users set status = 'verified' where id = ${req.user.id}` // nanti didapat dari auth token, hasil dari dicode

        db.query(updateQuery, (err ,results) => {
            // jika error
            if (err) {
                console.log(err);
                res.status(500).send(err)
            }
            // jika berhasil
            res.status(200).send({
                message : "Verified Account",
                success : true
            })
        })

    },
    editUsers : async (req, res) => {
        // berdasarkan  id users ==> di ambil dari global state
        console.log(req.body);
        const {fullname, username , bio ,id ,old_image} = req.body
        const uploadFileDomain = "http://localhost:2000"
        const filepath = "profile_images"
        

        let editData = {} // utk menampung data

        // // jika ada data filename ==> didapatkan dari middleware
        if(req.file?.filename){
            const {filename} = req.file
            console.log(filename);

            if (old_image != undefined){
                const path = `${__dirname}/../public/profile_images/${old_image}`
                console.log(path);
                //remove file di profile_images ==> jika ada
                fs.unlink(path, (err) => {
                    if (err) {
                        console.error(err)
                        return
                    }
                })
            }


            editData = {
                fullname,
                username,
                bio,
                fotoProfile : `${uploadFileDomain}/${filepath}/${filename}`
            } 

        } else {
            editData = {
                fullname,
                username,
                bio
            }
        }

            await Users.update(
                {...editData}, {
                    where : {id}
                }
            )

        return res.send("profile berhasil di update")
    },
    getLogin2 : (req ,res) => {
        // berhasil ==> pakai method post
        console.log(req.body);
        req.body.password
        req.body.password = Crypto.createHmac("sha1" , "hash123").update(req.body.password).digest("hex")
        let sqlQuery = "SELECT * FROM Users where (username ='"+ req.body.user_email +"' or email = '"+ req.body.user_email +"' ) and password = '" + req.body.password+"'" ;

        db.query(sqlQuery , (err , results) => {
            if(err)res.status(500).send(err)
            console.log(results);
            // jika berhasil
            if (results[0]){
                let {idusers, fullname , username , email ,password , role , fotoProfile , bio, status} = results[0]
                let token = createToken({idusers, fullname , username , email ,password , role , fotoProfile , bio, status})
                console.log(status);

                if(status != "verified"){
                    res.status(200).send({message: "Your Account not Verified"})
                } else {
                    res.status(200).send({
                        dataLogin : results[0],
                        token,
                        message : "Login Success"
                    })
                }
            }
        })
    }
}


