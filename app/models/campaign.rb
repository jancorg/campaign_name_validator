require "active_model"
require "active_support/core_ext"
require "validator"

class Campaign
  include ActiveModel::Validations
  attr_accessor :name
  validates :name, campaign_name: true

  def initialize(name)
    @name = name
  end
end
