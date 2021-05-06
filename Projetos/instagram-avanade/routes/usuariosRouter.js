const express = require('express');
const router = express.Router();
const usuariosController = require('../controllers/usuariosController');
const validarCadastro = require('../middlewares/validarCadastro');


/* GET users listing. 
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});
*/

router.get('/', usuariosController.index);
router.post('/', validarCadastro, usuariosController.create);
router.put('/:id', usuariosController.update);
router.delete('/:id', usuariosController.delete);

module.exports = router;
