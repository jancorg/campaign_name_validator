# -*- coding: utf-8 -*-

require 'test_helper'
require 'validator.rb'

class CampaignTest < ActiveSupport:: TestCase
  setup do
    # TODO: consider to use fixtures
    @right_campaign_name = 'interview' 
    @wrong_campaign_name =  '¬½€ł'
  end

  test 'truth' do
    assert true
  end

  test 'validate a valid campaign name' do
  	campaign = Campaign.new(@right_campaing_name)
  	campaign.valid?
    assert true
  end

  test 'invalidate an invalid campaign name' do
    campaign = Campaign.new(@wrong_campaing_name)
  	campaign.valid?
    assert false
  end


end
