require 'bundler/setup'
Bundler.require

Dir[File.expand_path('../fixtures/**/*.rb', __FILE__)].each { |f| require f }

MiniTest.autorun

if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

class TestCase < MiniTest::Test
end
