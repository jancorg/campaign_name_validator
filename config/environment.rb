# Load the Rails application.
require File.expand_path('../application', __FILE__)

config.frameworks -= [ :active_record, :active_support ] 

# Initialize the Rails application.
CampaignNameValidator::Application.initialize!

