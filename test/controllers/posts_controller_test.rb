require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get posts_new_url
    assert_redirected_to member_session_path
  end

  test 'should get index' do
    get posts_index_url
    assert_response :success
  end
end
