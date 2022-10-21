const mysql = require("mysql")
const util = require("util")

const {
    MYSQL_DB_NAME,
    MYSQL_USER,
    MYSQL_PASSWORD,
    MYSQL_PORT,
} = require("../configs/db");

const db = mysql.createPool({
    host: "localhost",
    user: MYSQL_USER,
    password: MYSQL_PASSWORD,
    database: MYSQL_DB_NAME,
    port: MYSQL_PORT,
    multipleStatements: true 
});

db.getConnection((err) => {
    if(err) {
        return console.error(`error : ${err.message}`)
    }
    console.log(`Connected to mySql server`);
})

const dbQuery = util.promisify(db.query).bind(db);
module.exports = { db, dbQuery };

// promisfy : callback function yg return value nya si sqlQuery
// bind : jadi si queryscript/querystring diikat di dalam db, dimana merupakan jembatan yg memberikan request terhadap back-end