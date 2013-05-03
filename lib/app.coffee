net = require 'net'

server = net.createServer (socket) ->
  
server.on 'connection', (socket) ->
  socket.write 'Hello, world'
  socket.pipe socket

module.exports = server

unless module.parent
  server.listen 7000