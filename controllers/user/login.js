/**
 * Login controller
 */

const pool = require('../../config/database');

module.exports = async (req, res) => {
    let connection;
    const { email, password } = req.params;
    console.log(email)
    try {
        connection = await pool.getConnection();
        const result = await connection.query('CALL login(?, ?);', [email, password]);
        console.log("result = ", result);
        if (result.length === 0) {
            return res.status(401).json({ success: false, data: "compte inconnu" });
        }
        const data = result[0]
        req.session.uid = data.id;
        req.session.email = data.email;
        console.log(result);
        return res.status(200).json({ success: true, user: data })
    } catch (error) {
        return res.status(400).json({ error: error.message });
    } finally {
        if (connection) connection.end();
    }
}