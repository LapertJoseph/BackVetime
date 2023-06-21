/**
 * creneau routes
 */

const express = require('express');
const { 
    getCreneauId, 
    getCreneauDate, 
    postCreneau, 
    getCreneauOk
} = require('../controllers/creneau');
const router = express.Router();

router.get('/creneau/:id', getCreneauId);
router.get('/creneau', getCreneauDate)
router.get('/creneauOk/:id', getCreneauOk)

router.post('/creneau/:id', postCreneau)

module.exports = router;