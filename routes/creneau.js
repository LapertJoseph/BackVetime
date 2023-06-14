/**
 * creneau routes
 */

const express = require('express');
const { getCreneauId } = require('../controllers/creneau');
const router = express.Router();

router.get('/creneau/:id', getCreneauId);

module.exports = router;