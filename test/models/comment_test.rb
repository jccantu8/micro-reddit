require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    user = User.new(name: 'fossegrim')
    user.save
    post = user.posts.new(link: 'fossegr.im')
    post.save
    @comment = post.comments.new(content: 'ah løv tihs sait', user_id: user.id)
  end

  test 'should be valid' do
    assert @comment.valid?, @comment.inspect
  end

  test 'should have post' do
    assert @comment.post_id.integer?
  end

  test 'should have user' do
    assert @comment.user_id.integer?
  end
end
