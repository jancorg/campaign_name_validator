require "active_model"
require "active_support/core_ext"
require "ascii_string_validator"

class Campaign
  include ActiveModel::Validations
  attr_accessor :name
  validates :name, ascii_string: true

  def initialize(name)
    @name = name
  end

end
