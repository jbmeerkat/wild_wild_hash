require 'bundler/setup'
Bundler.require

MiniTest::Unit.autorun

require 'coveralls'
Coveralls.wear!

class TestCase < MiniTest::Unit::TestCase
end