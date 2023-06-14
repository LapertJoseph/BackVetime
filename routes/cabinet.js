/**
 * cabinet routes
 */

const express = require('express');
const router = express.Router()
const { 
    postCabinet, 
    getCabinet 
} = require('../controllers/cabinet');

router.get('/cabinet', getCabinet)
router.post('/cabinet', postCabinet)

module.exports = router;