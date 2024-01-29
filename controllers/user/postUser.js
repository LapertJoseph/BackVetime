/**
 * Add User controller
 */

const pool = require("../../config/database");

module.exports = async (req, res) => {
  let connection;
  const { nom, prenom, email, password, adresse, isVeto } = req.body;
  try {
    connection = await pool.getConnection();
    const data = await connection.query("CALL add_user(?, ?, ?, ?, ?, ?);", [
      nom,
      prenom,
      email,
      password,
      adresse,
      isVeto,
    ]);
    console.log(data);
    return res.status(200).json({ success: true, data: data });
  } catch (error) {
    return res.status(400).json({ error: error.message });
  } finally {
    if (connection) connection.end();
  }
};
