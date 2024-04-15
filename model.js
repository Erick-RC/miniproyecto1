const db = require('./db');

async function obtenerUsuarios() {
  const connection = await db.getConnection();
  try {
    const [rows] = await connection.query('SELECT * FROM usuarios');
    return rows;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

module.exports = { obtenerUsuarios };
