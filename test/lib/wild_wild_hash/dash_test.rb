require 'test_helper'

class WildWildHash::DashTest < TestCase

  def setup
    @p = Person.new({name: 'Ivan'})
  end

  def test_shoud_get_set_keys
    @p.email = 'Test'
    assert_equal 'Test', @p.email
  end

  def test_should_get_default_value
    assert_equal 'Rubist', @p.occupation
  end

  def test_required_values
    assert_raises ArgumentError do
      @p.name = nil
    end
  end

  def test_as_hash_like_get_set
    @p[:email] = 'hi'
    assert_equal 'hi', @p[:email]
  end

  def test_no_method_hash_like_access
    assert_raises NoMethodError do
      @p[:no_method]
    end
  end
end
