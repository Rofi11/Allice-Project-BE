// middleware utk membuat token
const jwt = require('jsonwebtoken')

module.exports = {
    // akan menerima payload : bahan - bahan utk membuat token
    createToken : (payload) => {
        // butuh 3 parameter
        // 1. payload
        // 2. secret key : bebas, tapi ga boleh lupa, karena utk digunakan utk proses penerjemahan token
        // 3. option : configuration tambahan, cth expired token nya, baiik regi atau login
        return jwt.sign(payload, "private123" , {
            expiresIn: "12h"
        })
    }
}

// encoding/encoder : utk membuat secret token nya
    // ini merupakan middleware encoding