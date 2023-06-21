/**
 * Post creneau controller
 */

const pool = require('../../config/database');

module.exports = async (req, res) => {
    let connection;
    const { id } = req.params;
    const { disponibilite, date } = req.body;
    try {
        connection = await pool.getConnection();
        const result = await connection.query('CALL post_creneau(?, ?, ?);', [id, disponibilite, date]);
        if(result.length === 0) {
            return res.status(401).json({error: error.message})
        }
        return res.status(200).json({success: true, data : result});
    } catch (error) {
        return res.status(400).json({error: error.message})
    } finally {
        if(connection) connection.end()
    }
}