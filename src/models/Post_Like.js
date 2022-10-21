const { DataTypes } = require("sequelize");

const Post_Like = (sequelize) => {
    return sequelize.define("Post_Like" , {
        id : {
            type: DataTypes.INTEGER,
            primaryKey : true,
            autoIncrement : true,
            allowNull : false
        }
    },
    {
        timestamps : false
    }
    )
}

module.exports = Post_Like