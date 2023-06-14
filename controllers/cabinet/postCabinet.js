/**
 * Add Cabinet controller
 */

const pool = require('../../config/database');

module.exports = async (req, res) => {
    let connection;
    const { ville, cp, latitude, longitude, adresse, nomCabinet, telCabinet } = req.body;
    try {
        connection = await pool.getConnection();
        const result = await connection.query('CALL post_cabinet(?, ?, ?, ?, ?, ?, ?);', [ville, cp, latitude, longitude, adresse, nomCabinet, telCabinet]);
        const data = result
        return res.status(200).json({success: true, data: data});
    } catch (error) {
        return res.status(400).json({error: error.message});
    } finally {
        if(connection) connection.end();
    }
}