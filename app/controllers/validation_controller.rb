require 'ascii_string_validator.rb'
require 'campaign.rb'

class ValidationController < ApplicationController

  def index
  end

  def validate
    campaign_name = params[:name]
    campaign      = Campaign.new(campaign_name)                                                                                                                                                                                                   
    
    if  campaign.valid?
      @result     = "valid!"
      render :validate
    else
      @result     = "not valid :("
      render :validate, :status => :bad_request
    end
  end
end
