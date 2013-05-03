should = require('chai').should()
net = require 'net'

server = require '../lib/app'

describe 'EPP Server', () ->
  it 'should return "Hello, world" when a client connects', (done) ->
    server.listen 7000

    server.on 'listening', () ->
      client = net.createConnection server.address().port

      client.on 'data', (data) ->
        data.toString().should.equal 'Hello, world'

        server.close()
        done()