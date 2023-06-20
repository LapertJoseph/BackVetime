/**
 * creneau routes
 */

const express = require('express');
const { getCreneauId, getCreneauDate } = require('../controllers/creneau');
const router = express.Router();

router.get('/creneau/:id', getCreneauId);
router.get('/creneau', getCreneauDate)

module.exports = router;