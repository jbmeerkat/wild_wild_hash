require 'test_helper'

class WildWildHash::MashTest < TestCase

  def setup
    @mash = WildWildHash::Mash.new
    @mash[:name] = 'John Doe'
  end

  def test_method_should_return_value
    assert_equal 'John Doe', @mash.name
  end

  def test_should_set_value
    @mash.blah = 'Blah'
    assert_equal 'Blah', @mash.blah
  end

  def test_value_should_exist
    assert @mash.name?
  end

  def test_should_respond_to_method
    assert @mash.respond_to?(:name)
  end

end
