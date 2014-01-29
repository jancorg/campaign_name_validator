require 'test_helper' 
#require 'validator.rb'

class ValidationControllerTest < ActionController::TestCase

  setup do
     # TODO: consider to use fixtures
     @right_campaign_name = 'interview'
     @wrong_campaign_name = 'not really wrong' # '¬½€ł'
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should validate right campaign name" do
    post :validate, :name => @right_campaign_name
      assert_response 200
   end

  test "should invalidate wrong campaign name" do
    post :validate, :name => @wrong_campaign_name
      assert_response 400
   end
  
end
