require 'test_helper'

class WildWildHash::TrashTest < TestCase

  def setup
    @result = Result.new(:id => '123', :creation_date => '2012-03-30 17:23:28')
  end

  def test_attributes_should_be_converted
    assert @result.id.is_a?(Fixnum)
    assert @result.created_at.is_a?(Time)
  end

end