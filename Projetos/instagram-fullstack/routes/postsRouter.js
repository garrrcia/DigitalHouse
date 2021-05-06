const express = require('express')
const router = express.Router()
const postsController = require('../controllers/postsController')

router.get('/', postsController.index)
// http://localhost:3333/posts/

router.post('/:id?', postsController.create)
router.put('/:id?', postsController.update)
router.delete('/:id', postsController.delete)

router.get('/:id', postsController.show);

module.exports = router;