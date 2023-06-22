/**
 * Get creneau disponible controller 
 */

const pool = require('../../config/database');

module.exports = async (req, res) => {
    let connection;
    const { id } = req.params;
    try {
        connection = await pool.getConnection();
        const result = await connection.query('CALL get_creneau_ok(?);', [id]);
        if (result.length === 0) {
            return res.status(401).json({error: error.message});
        }
        console.log(result);
        return res.status(200).json({success: true, data: result[0]});
    } catch (error) {
        return res.status(400).json({error: error.message});
    } finally {
        if(connection) connection.end();
    }
}