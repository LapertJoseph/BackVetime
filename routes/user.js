/**
 * Création d'un fichier répertoriant toute les routes liés a l'authentification
 */

const express = require('express');
const getUser = require('../controllers/user/getUser');
const login = require('../controllers/user/login');
const postUser = require('../controllers/user/postUser');
const getUserEmail = require('../controllers/user/getUserEmail');


const router = express.Router();

router.get('/user', getUser);
router.get('/auth', login);
router.get('/users/email/', getUserEmail)

router.post('/users', postUser);

module.exports = router;