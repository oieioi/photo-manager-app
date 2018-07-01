require 'test_helper'

class ExhibitionControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get exhibition_show_url
    assert_response :success
  end

end
