const {DataTypes} = require("sequelize")

const Commentar = (sequelize) => {
    return sequelize.define("Commentar" , {
        isi_commentar : {
            type : DataTypes.TEXT,
            allowNull : false
        }
    },
    {
        timestamps : false
    }
    )
}

module.exports = Commentar