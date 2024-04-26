import { createServer } from 'http';
import { readFile } from 'fs';
import { obtenerUsuarios, exportarUsuariosCSV, importarUsuariosCSV } from './src/controller.js';

const PORT = process.env.PORT || 3000;

const server = createServer(async (req, res) => {
  if (req.url === '/' && req.method === 'GET') {
    readFile('./public/index.html', (err, data) => {
      if (err) {
        res.writeHead(500, { 'Content-Type': 'text/plain'});
        res.end('Error interno del servidor');
      } else {
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.end(data);
      }
    });
  } else if (req.url === '/api/usuarios' && req.method === 'GET') {
    obtenerUsuarios(req, res);
  } else if (req.url === '/api/usuarios/export' && req.method === 'GET') {
    exportarUsuariosCSV(req, res);
  } else if (req.url === '/api/usuarios/import' && req.method === 'POST') {
    importarUsuariosCSV(req, res);
  } else {
    res.writeHead(404, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ message: 'Ruta no encontrada' }));
  }
});

server.listen(PORT, () => {
  console.log(`Servidor corriendo en el puerto ${PORT}`);
});

