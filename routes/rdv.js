/**
 * rdv routes
 */

const express = require('express');
const getRdv = require('../controllers/rdv/getRdv');
const router = express.Router();

router.get('/rdv', getRdv)

module.exports = router;