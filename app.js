const http = require('http');
const fs = require('fs');
const controller = require('./controller' );

const PORT = process.env.PORT || 3000;

const server = http.createServer(async (req, res) => {
  if (req.url === '/' && req.method === 'GET') {
    fs.readFile('./public/index.html', (err, data) => {
      if (err) {
        res.writeHead(500, { 'Content-Type': 'text/plain'});
        res.end('Error interno del servidor');
      } else {
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.end(data);
      }
    });
  } else if (req.url === '/api/usuarios' && req.method === 'GET') {
    controller.obtenerUsuarios(req, res);
  } else if (req.url === '/api/usuarios/export' && req.method === 'GET') {
    controller.exportarUsuariosCSV(req, res);
  } else if (req.url === '/api/usuarios/import' && req.method === 'POST') {
    controller.importarUsuariosCSV(req, res);
  } else {
    res.writeHead(404, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify({ message: 'Ruta no encontrada' }));
  }
});

server.listen(PORT, () => {
  console.log(`Servidor corriendo en el puerto ${PORT}`);
});

