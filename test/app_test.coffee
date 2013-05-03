should = require('chai').should()
net = require 'net'

server = require '../lib/app'

describe 'EPP Server', () ->
  beforeEach (done) ->
    server.listen 7000
    
    done()

  afterEach (done) ->
    server.close()
    
    done()

  it 'should return "Hello, world" when a client connects', (done) ->
    server.on 'listening', () ->
      client = net.createConnection server.address().port

      client.on 'data', (data) ->
        data.toString().should.equal 'Hello, world'

        client.end()
        done()