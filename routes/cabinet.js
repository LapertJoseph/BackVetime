/**
 * cabinet routes
 */

const express = require('express');
const router = express.Router()
const { 
    postCabinet, 
    getCabinet,
    getCabinetVille,
    getCabinetRayon,
    getCabinetId
} = require('../controllers/cabinet');

router.get('/cabinet', getCabinet)
router.get('/cabinets', getCabinetVille)
router.get('/cabinetRayon', getCabinetRayon)
router.post('/cabinet/:id', postCabinet)
router.get('/cabinet/:id', getCabinetId)

module.exports = router;