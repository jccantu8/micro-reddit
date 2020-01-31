require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'fossegrim')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'name should be present' do
    u = User.new
    assert_not u.valid?
  end

  test 'name should be unique' do
    @user.save
    dupe = @user.dup
    assert_not dupe.save
  end

  test 'name should be maximum 50 characters' do
    @user.name = 'a' * 51
    assert_not @user.valid?
  end
end
