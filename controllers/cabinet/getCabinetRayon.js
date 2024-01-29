/**
 * GetCabinetRayon controller
 */

const pool = require("../../config/database");

module.exports = async (req, res) => {
  let connection;
  console.log(req.query);
  const latitude = req.query.latitude;
  const longitude = req.query.longitude;

  try {
    connection = await pool.getConnection();
    const data = await connection.query("CALL get_cabinet_rayon(?, ?);", [
      latitude,
      longitude,
    ]);
    return res.status(200).json({ success: true, data: data });
  } catch (error) {
    return res.status(400).json({ error: error.message });
  } finally {
    if (connection) connection.end();
  }
};
