const {db , dbQuery} = require("../database")
const { Commentar , Users, Commentar_post, Post} = require('../lib/sequelize');

module.exports = {
    getPostComment : async (req,res) => {
        console.log(req.params.id);
        let id = req.params.id

        let sqlGet = `select p.id as PostId, u.fotoProfile, u.username, c.isi_commentar ,u.id as UsersId from commentars c 
                        join posts p on p.id = c.PostId
                        join users u on u.id = c.UsersId
                        where PostId = ${id}`
        db.query(sqlGet, (err ,results) => {
            if(err){
                res.status(500).send(err)
            }

            res.status(200).send(results)
        })

        // cara pakai sequelize
        // const comment = await Commentar.findAll({
        //     include : Users,
        //     where : {
        //         PostId : id
        //     }
        // })

        // return res.send(comment)
    },
    postcomment : (req, res) => {
        console.log(req.body);
        let {isi_commentar , UsersId , PostId } = req.body

        let sqlQuery = `insert into commentars values (null, ${db.escape(isi_commentar)}, ${db.escape(UsersId)}, ${db.escape(PostId)})`
        console.log(sqlQuery);
        db.query(sqlQuery , (err, results) => {
            if(err){
                console.log(err);
                res.status(500).send(err)
            }

            res.status(200).send({
                message : "berhasil post commentar"
            })
        })

        // try {
        //     let {isi_commentar , UsersId , PostId } = req.body

        //     Commentar.create({
        //         isi_commentar,
        //         UsersId,
        //         PostId
        //     })
        // } catch (err) {
        //     console.log(err);
        // }
    }
}