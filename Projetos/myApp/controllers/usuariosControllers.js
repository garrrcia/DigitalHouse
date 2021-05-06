const usuarios = require('../models/usuarios');

const usuariosControllers= {
    index: (req, res) => {
        return res.send(usuarios.listarUsuarios());
    }

}

module.exports = usuariosControllers;