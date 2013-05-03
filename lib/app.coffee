net = require 'net'

server = net.createServer (socket) ->
  socket.write 'Hello, world'
  socket.pipe socket

server.listen 7000, '127.0.0.1'