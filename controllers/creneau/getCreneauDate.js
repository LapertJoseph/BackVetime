/**
 * Post créneau controller
 */

const pool = require("../../config/database");

module.exports = async (req, res) => {
  let connection;
  const { date } = req.body;
  try {
    connection = await pool.getConnection();
    const result = await connection.query("CALL get_creneau_sup(?);", [date]);
    return res.status(200).json({ success: true, data: result[0] });
  } catch (error) {
    return res.status(400).json({ error: error.message });
  } finally {
    if (connection) connection.end();
  }
};
