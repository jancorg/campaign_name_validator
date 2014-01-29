require 'validator'
require 'campaign'

class ValidationController < ApplicationController

  def index
  end

  def validate
    campaign_name = params[:name]                                                                                                                                                                                                            
    campaign = Campaign.new(campaign_name)                                                                                                                                                                                                   
    if campaign.valid?                                                                                                                                                                                                                       
      @result = "Valid Name"
      render :validate                                                                                                                                                                                                      
    else                                                                                                                                                                                                                                     
      @result = "Invalid Name"  
      render :validate, :bad_request                                                                                                                                                                                                       
    end                                                                                                                                                                                                                                      
  end

end 
