require 'test_helper'

class ArchivesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get archives_new_url
    assert_response :success
  end

end
