const {DataTypes} = require("sequelize")

const Users = (sequelize) => {
    return sequelize.define("Users" , {
        fullname : {
            type : DataTypes.STRING,
            allowNull : false
        },
        username : {
            type : DataTypes.STRING,
            allowNull : false, 
        },
        email : {
            type : DataTypes.STRING,
            allowNull : false
        },
        password : {
            type : DataTypes.TEXT,
            allowNull : false
        },
        role : {
            type : DataTypes.STRING,
            allowNull : false
        },
        fotoProfile : {
            type : DataTypes.TEXT,
            allowNull : true
        },
        bio : {
            type : DataTypes.TEXT,
            allowNull : true
        },
        status : {
            type : DataTypes.STRING,
            allowNull : false
        },
    },
    {
        timestamps : false
    }
    )
}

module.exports = Users