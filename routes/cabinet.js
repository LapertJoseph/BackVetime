/**
 * cabinet routes
 */

const express = require('express');
const router = express.Router()
const getCabinet = require('../controllers/cabinet/getCabinet')

router.get('/cabinet', getCabinet)

module.exports = router;