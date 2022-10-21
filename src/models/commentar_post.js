const { DataTypes } = require("sequelize");

const Commentar_post = (sequelize) => {
    return sequelize.define("Commentar_post" , {
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

module.exports = Commentar_post