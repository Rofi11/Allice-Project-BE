const {Sequelize} = require("sequelize")
const dbConfig = require("../configs/db")

const sequelize = new Sequelize({
    username : dbConfig.MYSQL_USER,
    password : dbConfig.MYSQL_PASSWORD,
    database : dbConfig.MYSQL_DB_NAME,
    port : dbConfig.MYSQL_PORT,
    dialect : "mysql" //dialect : adalah database yg kita pakai
})

const Users = require("../models/users")(sequelize)
const Post = require("../models/post")(sequelize)
const Commentar = require("../models/commentar")(sequelize)
const Like = require("../models/like")(sequelize)

// association

// post
Post.belongsTo(Users, {foreignKey : "usersId"})
Users.hasMany(Post, {foreignKey : "usersId"})

// comment
Users.hasMany(Commentar, {foreignKey : "UsersId"})
Commentar.belongsTo(Users, {foreignKey : "UsersId"})
Post.hasMany(Commentar, {foreignKey : "PostId"})
Commentar.belongsTo(Post, {foreignKey : "PostId"})

// like
Users.hasMany(Like, {foreignKey : "UsersId"})
Like.belongsTo(Users, {foreignKey : "UsersId"})
Post.hasMany(Like, {foreignKey : "PostId"})
Like.belongsTo(Post, {foreignKey : "PostId"})



// Post.belongsToMany(Commentar, {through: Commentar_post , foreignKey : "UsersId", unique:false})
// Users.belongsToMany(Commentar, {through: Commentar_post , foreignKey : "PostId", unique:false})


module.exports = {
    sequelize,
    Users,
    Post,
    Commentar,
    Like
}