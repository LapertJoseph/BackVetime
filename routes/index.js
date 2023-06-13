const express = require('express');
const rootRouter = express.Router();

const user = require('./user');
const rdv = require('./rdv')

rootRouter.use('/user', user);
rootRouter.use('/rdv', rdv);
module.exports = rootRouter;