const express = require('express');
const rootRouter = express.Router();

const user = require('./user');
const rdv = require('./rdv');
const cabinet = require('./cabinet');
const creneau = require('./creneau');


rootRouter.use('/user', user);
rootRouter.use('/rdv', rdv);
rootRouter.use('/cabinet', cabinet);
rootRouter.use('/creneau', creneau);

module.exports = rootRouter;