/**
 * Login controller
 */
const jsonwebtoken = require("jsonwebtoken");
const pool = require("../../config/database");
const Config = require("../../config/env");

module.exports = async (req, res) => {
  let connection;
  const { email, password } = req.body;
  try {
    connection = await pool.getConnection();
    const result = await connection.query("CALL login(?, ?);", [
      email,
      password,
    ]);
    if (result.length === 0) {
      return res.status(401).json({ success: false, data: "compte inconnu" });
    }
    const data = result[0][0];
    console.log(data);
    const token = jsonwebtoken.sign(
      {
        email,
        ...data,
      },
      Config.JWT_SECRET
    );
    // On set le token dans les headers pour le recuperer plus tard dans le front
    res.set("x-access-token", token);
    req.session.uid = data.id;
    req.session.email = data.email;
    return res.status(200).json({ success: true, user: data });
  } catch (error) {
    return res.status(400).json({ error: error.message });
  } finally {
    if (connection) connection.end();
  }
};
