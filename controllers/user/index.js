/**
 * Auth controller index
 */

const getUser = require('./getUser');
const login = require('./login');
const addUser = require('./postUser');

module.export = {
    getUser: getUser,
    login: login,
    postUser: addUser,
}