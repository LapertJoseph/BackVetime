/**
 * Login Controller
 */

const pool = require("../../config/database");

module.exports = async (req, res) => {
  let connection;
  try {
    connection = await pool.getConnection();
    const data = await connection.query("CALL get_user();");
    return res.status(200).json({ success: true, data: data[0] });
  } catch (error) {
    return res.status(400).json({ error: error.message });
  } finally {
    if (connection) connection.end();
  }
};
