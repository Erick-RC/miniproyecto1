const fs = require('fs');
const Usuario = require('./model');
const dotenv = require('dotenv');
dotenv.config();

const PORT = process.env.PORT || 3000;

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

    fs.writeFileSync('usuarios.csv', csvContent);

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
    const inputStream = fs.createReadStream('usuarios.csv');
    const rl = require('readline').createInterface({
      input: inputStream,
      crlfDelay: Infinity
    });

    for await (const line of rl) {
      const data = line.split(',');
      console.log(data);
    }

    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ message: 'Datos importados exitosamente' }));
  } catch (error) {
    console.error('Error al importar usuarios:', error);
    res.writeHead(500, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ error: 'Error al importar usuarios' }));
  }
}

module.exports = { obtenerUsuarios, exportarUsuariosCSV, importarUsuariosCSV };
