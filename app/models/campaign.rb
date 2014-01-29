require "active_model"
require "active_support/core_ext"
require "validator.rb"

class Campaign
  include ActiveModel::Validations
  attr_accessor :name
  validates :name, ascii_string: true

  def initialize(name)
    @name = name
  end

#  def sanitize(name)
#    require 'iconv'
#    Iconv.conv('ASCII//IGNORE', 'UTF8', name)
#  end
end
