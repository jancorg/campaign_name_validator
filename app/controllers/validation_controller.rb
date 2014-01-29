class ValidationController < ApplicationController
  def index
  end

  def validate
  	campaign_name = params[:name]                                                                                                                                                                                                            
    campaign = Campaign.new(campaign_name)                                                                                                                                                                                                   
    if campaign.valid?                                                                                                                                                                                                                       
      @result = "Valid Name"                                                                                                                                                                                                                 
    else                                                                                                                                                                                                                                     
      @result = "Invalid Name"                                                                                                                                                                                                               
    end                                                                                                                                                                                                                                      

    render :validate
  end
end
