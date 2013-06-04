require 'bundler/setup'
Bundler.require

MiniTest.autorun

if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

class TestCase < MiniTest::Test
end