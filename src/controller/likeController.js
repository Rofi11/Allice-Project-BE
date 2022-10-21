const {Like,Post} = require('../lib/sequelize')
const {Op} = require('sequelize')

module.exports = {
    addLike : async (req, res) => {
        try {
            // menerima body dari front, UsersId dan PostId
            const {UsersId , PostId} = req.body
            console.log(UsersId);
            console.log(PostId);

            // mencari dulu di table like ada atau tidak UsersId , PostId nya
            const check = await Like.findOne({
                where : {
                    [Op.and] : {
                        UsersId,
                        PostId
                    }
                }
            })

            console.log(check);

            const checkPost = await Post.findOne({
                where: {
                    id : PostId
                }
            })

            // jika like nya ada, kita hapus userId dan postId
            if (check) {
                await Like.destroy({
                    where : {
                        id : check.dataValues.id
                    }
                })

                await Post.update(
                {
                    number_of_likes : checkPost.dataValues.number_of_likes - 1
                },
                {where : {id : PostId}}
                )

                return res.status(200).json({
                    message : "Unlike Post"
                })
            }

            // jika belum ada like didallam foto
            await Like.create({
                UsersId,
                PostId
            })

            await Post.update(
            {
                number_of_likes : checkPost.dataValues.number_of_likes + 1
            },
            {where : {id : PostId}}
            )

            return res.status(200).json({
                message : "Like Post"
            })

        } catch (err) {
            console.log(err);
            return res.status(500).json({
                message : err.toString()
            })
        }
    },
    getLike : async(req, res) => {
        
    }
}