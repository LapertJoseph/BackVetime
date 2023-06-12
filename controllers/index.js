/**
 * Auth controller index
 */

const getUser = require('../controllers/user/getUser');
const login = require('../controllers/user/login');
const addUser = require('../controllers/user/postUser');

module.export = {
    getUser: getUser,
    login: login,
    postUser: addUser,
}