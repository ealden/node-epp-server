should = require('chai').should()
net = require 'net'

describe 'App', () ->
  it 'should return true', () ->
    true.should.equal true

  it 'should return false', () ->
    false.should.not.equal true