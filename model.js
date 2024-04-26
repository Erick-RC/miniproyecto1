import db from './db.js';

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

export default { obtenerUsuarios };
