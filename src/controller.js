import { writeFileSync } from 'fs';
import Usuario from './model.js';
import { createReadStream } from 'fs';
import { pool } from './db.js';


async function obtenerUsuarios(req, res) {
  try {
    const usuarios = await Usuario.obtenerUsuarios();
    res.setHeader('Content-Type', 'application/json');
    res.statusCode = 200;
    res.end(JSON.stringify(usuarios));
  } catch (error) {
    console.error('Error al obtener usuarios:', error);
    res.setHeader('Content-Type', 'application/json');
    res.statusCode = 500;
    res.end(JSON.stringify({ error: 'Error al obtener usuarios' }));
  }
}

async function exportarUsuariosCSV(req, res) {
  try {
    const usuarios = await Usuario.obtenerUsuarios();

    let csvContent = 'id,nombres,apellidos,direccion,correo,dni,edad,fecha_creacion,telefono\n';
    usuarios.forEach(usuario => {
      csvContent += `${usuario.id},${usuario.nombres},${usuario.apellidos},${usuario.direccion},${usuario.correo},${usuario.dni},${usuario.edad},${usuario.fecha_creacion},${usuario.telefono}\n`;
    });

    writeFileSync('usuarios.csv', csvContent);

    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ message: 'Datos exportados a usuarios.csv' }));
  } catch (error) {
    console.error('Error al exportar usuarios:', error);
    res.writeHead(500, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ error: 'Error al exportar usuarios' }));
  }
}

async function importarUsuariosCSV(req, res) {
  try {
      const archPath = path.resolve('./usuarios.csv');
      const archCont = await fs.readFile(archPath, 'utf-8');
      const sepLineas = archCont.split('\n').map(row => row.split(','));

      for (const userData of sepLineas) {
          const [id, nombres, apellidos, direccion, correoElectronico, dni, edad, fechaCreacion, telefono] = userData;
          const [existeId] = await pool.query('SELECT id FROM empleados WHERE id = ?', [id]);
          if (existeId.length > 0) {
              console.log(`El ID ${id} ya existe en la base de datos. Se omite`);
              continue;
          }

          await pool.query('INSERT INTO empleados (id, nombres, apellidos, direccion, correo_electronico, dni, edad, fecha_creacion, telefono) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)', 
          [id, nombres, apellidos, direccion, correoElectronico, dni, edad, fechaCreacion, telefono]);
          console.log(`Usuario con ID ${id} ingresado correctamente.`);
      }

      res.writeHead(200, { 'Content-Type': 'text/html' });
      res.end('<h1>Usuario Importado</h1>');
  } catch (err) {
      console.error('Error al importar usuarios desde CSV:', err);
      res.writeHead(500, { 'Content-Type': 'text/html' });
      res.end('<h1>Error al importar usuarios desde CSV</h1>');
  }
}


export { obtenerUsuarios, exportarUsuariosCSV, importarUsuariosCSV };
