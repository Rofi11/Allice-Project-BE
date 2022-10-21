//  bertugas utk mengirim email verification
const nodemailer = require('nodemailer')

//buat middleware nya ==> utk acsess ke akun gmail nya
const transporter = nodemailer.createTransport({
    // configurasi utk email
        // 1. email apa yg ingin digunakan provider nya
        // 2. nama email nya apa
        //    password access nya apa
    service : 'gmail',
    auth : {
        user : 'rofimuhamad0381@gmail.com',
        pass : 'sqxuejwmzygjthom' //'password email apllication, bukan password akun'
    },
    tls : {
        rejectUnauthorized : false
    }
})

module.exports = transporter