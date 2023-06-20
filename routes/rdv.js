/**
 * rdv routes
 */

const express = require('express');
const router = express.Router();
const { postRdv, getRdv } = require('../controllers/rdv');

router.get('/rdv', getRdv)
router.post('/rdv/:id', postRdv)

module.exports = router;