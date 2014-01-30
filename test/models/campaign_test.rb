# -*- coding: utf-8 -*-
require 'test_helper'
require 'ascii_string_validator'

class CampaignTest < ActiveSupport::TestCase

  setup do
    # TODO: consider to use fixtures
    @right_campaign_name = "interview"
    @wrong_campaign_name = "€€€€→↓←ŧđ¶ð"
  end

  test 'validate a valid campaign name' do
  	campaign = Campaign.new(@right_campaign_name)
  	assert campaign.valid?
  end

  test 'invalidate an invalid campaign name' do
    campaign = Campaign.new(@wrong_campaign_name)
    assert_not campaign.valid?
  end

end
