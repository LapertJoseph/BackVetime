/**
 * Get User Email controller
 */

const pool = require('../../config/database');

module.exports = async (req, res) => {
    let connection;
    const { email } = req.query;
    try {
        connection = await pool.getConnection();
        const result = await connection.query('CALL get_user_email(?);', [email]);
        return res.status(200).json({ success: true, data: result[0] });
    } catch (error) {
        return res.status(400).json({ error: error.message });
    } finally {
        if (connection) connection.end();
    }
}