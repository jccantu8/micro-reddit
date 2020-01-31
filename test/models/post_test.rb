require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'fossegrim')
    @post = @user.post.new(link: 'http://fossegr.im')
  end

  test 'should be valid' do
    assert @post.valid?
  end

  test 'link should be present' do
    @post.link = ' '
    assert_not @post.valid?
  end
end
