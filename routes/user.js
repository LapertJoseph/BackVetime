/**
 * Création d'un fichier répertoriant toute les routes liés a l'authentification
 */

const express = require("express");
const getUser = require("../controllers/user/getUser");
const login = require("../controllers/user/login");
const postUser = require("../controllers/user/postUser");
const getUserEmail = require("../controllers/user/getUserEmail");
const getUserId = require("../controllers/user/getUserId");

const router = express.Router();

router.get("/user", getUser);
router.get("/users/email/", getUserEmail);
router.get("/user/:id", getUserId);
router.post("/auth", login);

router.post("/users", postUser);

module.exports = router;
