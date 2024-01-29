/**
 * Post Rdv controller
 */

const pool = require('../../config/database');

module.exports = async (req, res) => {
    let connection;
    const { id } = req.params;
    console.log(id)
    const { cabinet, animal, date } = req.body;
    try {
        connection = await pool.getConnection();
        const data = await connection.query('CALL post_rdv(? ,? ,? ,?);', [Number(id), cabinet, animal, new Date(date)]);
        return res.status(200).json({success: true, data: data});
    } catch (error) {
        return res.status(400).json({error: error.message});
    } finally {
        if(connection) connection.end()
    }
}