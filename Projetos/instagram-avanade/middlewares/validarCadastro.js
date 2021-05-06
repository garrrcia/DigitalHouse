const { Usuario } = require('../models');

module.exports = async (req, res, next) => {
    let { email } = req.body;
    let users = await Usuario.findAll({
        where: { email }
    });

    if(users.length) {
        return res.status(400).json({ erro: "Email já cadastrado"});
    } else {
        next();
    }
}

