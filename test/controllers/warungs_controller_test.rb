require 'test_helper'

class WarungsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get warungs_index_url
    assert_response :success
  end

end
