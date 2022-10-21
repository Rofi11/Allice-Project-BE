const {DataTypes} = require('sequelize')

const Post = (sequelize) => {
    return sequelize.define("Post" , {
        postImage : {
            type : DataTypes.TEXT,
            allowNull : false
        }, 
        caption : {
            type : DataTypes.TEXT,
            allowNull : false
        },
        created_date : {
            type : DataTypes.STRING,
            allowNull : false
        },
        number_of_likes : {
            type : DataTypes.INTEGER,
            allowNull : true,
            defaultValue : 0
        }
    },
    {
        timestamps : false
    }
    )
}

module.exports = Post