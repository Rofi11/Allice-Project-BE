const {db , dbQuery} = require('../database')
// const {uploader} = require('../helper/uploader')
const fs = require('fs')
const {Post, Like , Commentar, Users} = require('../lib/sequelize')

module.exports = ({
    uploadFile : async (req,res) => {
        console.log(req.body);
        const {caption , created_date , usersId} = req.body
        const uploadFileDomain = "http://localhost:2000"
        const filepath = "post_images"
        const {filename} = req.file // dpt dari middleware nya
        console.log(filename);

        const newPost = await Post.create({
            postImage : `${uploadFileDomain}/${filepath}/${filename}`,
            caption,
            created_date,
            usersId
        })

        return res.send(newPost)
    },

    getPost : async (req, res) => {
        // file database nya berdasarkan dari users yg login utk di profile
        console.log(req.params);
        let usersId = req.params.id
        const post = await Post.findAll({
            include : [{
                model : Commentar,
            },
            {
                model : Like,
            }
        ],     
        where : {
            usersId : usersId
        }
        })

        return res.send(post)
    },
    getPostDetail : async(req, res) => {
        // ambil detail data berdasarkan id post nya
        // console.log(req.params.id);
        
        let id = req.params.id
        console.log(id);

        // let sqlGet = `Select * from posts where id = ${id};`

        // db.query(sqlGet , (err , results) => {
        //     // jika error
        //     if(err) {
        //         res.status(500).send(err)
        //     }
        //     // jika berhasil
        //     res.status(200).send(results)
        // })

        const post = await Post.findOne({
            include : [{
                model : Like,
            },
            {
                model : Commentar
            },
            {
                model : Users
            }
        ],     
        where : {
            id
        }
        })

        return res.send(post)
    },
    deletePost : async (req, res) => {
        console.log(req.body);
        const {id, old_img} = req.body

        await Post.destroy({
            include : [{
                model : Commentar
            }],
            where : {
                id
            }
        })

        console.log(old_img);

        const path = `${__dirname}/../public/post_images/${old_img}`
        console.log(path);

        fs.unlink(path , (err) => {
            if(err) {
                console.error(err);
                return
            }
        })
        return res.send("movie deleted")
    },
    editCaption : async (req, res) => {
        // berdasarkan id post

        let data = await req.body

        let id = req.params.id

        let editSql = `Update posts set caption = "${data.caption}" where id = ${id}`
         // jalankan update query didalam db.query
        db.query(editSql, (err , result) => {
            if (err) res.status(500).send(err)
            res.status(200).send(result)
        })
    },
    getAllPost : async (req,res) => {
        // ambil dat apost semua utk di home
        try {
            const {limit , page} = req.query
            const findPost = await Post.findAll({
                offset : (page - 1) * limit,
                limit : limit ? parseInt(limit) : undefined,
                include : [Users , Like ,Commentar],
                order : [
                    ["id" , "DESC"]
                ]
            })

            return res.status(200).json({
                message : "Berhasil dapat Data",
                results : findPost
            })
        } catch (err) {
            console.log(err);
            return res.status(500).json({
                message: err,
            });
        }
    }
})