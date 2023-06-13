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
        const data = await connection.query('CALL login(?, ?);', [email, password]);
        console.log(data);
        req.session.uid = data.id;
        req.session.email = data.email;
        return res.status(200).json({ success: true, data: data[0] })
    } catch (error) {
        return res.status(400).json({ error: error.message });
    } finally {
        if (connection) connection.end();
    }
}