/**
 * Cabinet controller index
 */

const getCabinet = require("./getCabinet");
const postCabinet = require("./postCabinet");
const getCabinetVille = require("./getCabinetVille");
const getCabinetRayon = require("./getCabinetRayon");
const getCabinetId = require("./getCabinetId");

module.exports = {
  getCabinet,
  postCabinet,
  getCabinetVille,
  getCabinetRayon,
  getCabinetId,
};
