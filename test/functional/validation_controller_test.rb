require 'test_helper' 
require 'validator'

class ValidationControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get validate" do
    get :validate
    assert_response :success
  end

end
