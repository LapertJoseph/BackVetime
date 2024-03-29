/**
 * Auth controller index
 */

const getUser = require("./getUser");
const login = require("./login");
const addUser = require("./postUser");
const getUserEmail = require("./getUserEmail");
const getUserId = require("./getUserId");
module.export = {
  getUser,
  login,
  postUser: addUser,
  getUserEmail,
  getUserId,
};
