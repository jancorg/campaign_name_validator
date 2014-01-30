require 'spec_helper'

require "active_model"

describe Campaign do
  let (:campaign) {FactoryGirl.create(:campaign, name: "valid")}
  it "is valid with full ascii string" do 
    campaign.valid?.should be_valid
  end 

end
