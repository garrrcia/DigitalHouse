const express = require('express');
const router = express.Router();
const usuariosControllers = require('../controllers/usuariosControllers');

/* GET users listing. */
router.get('/', usuariosControllers.index);

module.exports = router;
