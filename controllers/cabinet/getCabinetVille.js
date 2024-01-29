/**
 * GetCabinetVille
 */

const pool = require('../../config/database');

module.exports = async (req, res) => {
    let connection;
    const { ville } = req.body;
    try {
        connection = await pool.getConnection();
        const data = await connection.query('CALL get_cabinet_ville(?);', [ville]);
        return res.status(200).json({success: true, data: data[0]});
    } catch (error) {
        return res.status(400).json({error: error.message});
    } finally {
        if(connection) connection.end()
    }
}