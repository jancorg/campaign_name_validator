require 'test_helper'

class ValidationControllerTest < ActionController::TestCase
  setup do
    # TODO: consider to use fixtures
    @right_campaign_name = 'interview'
    @wrong_campaign_name = '¬½€ł'
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should validate right campaign name" do
    post :validate, :name => @right_campaign_name
    assert_response :success
  end

    post :validate, :name => @wrong_campaign_name
    assert_response :fail
  end
  
end
