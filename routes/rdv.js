/**
 * rdv routes
 */

const express = require('express');
const router = express.Router();
const getRdv = require('../controllers/rdv/getRdv');

router.get('/rdv', getRdv)

module.exports = router;