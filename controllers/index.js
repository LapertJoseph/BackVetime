/**
 * Auth controller index
 */

const getUser = require('../controllers/user/getUser');
const login = require('../controllers/user/login');

module.export = {
    getUser: getUser,
    login: login,
}