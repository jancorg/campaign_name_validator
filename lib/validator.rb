class CampaignNameValidator < ActiveModel::EachValidator
  
  @regex= /[\x00-\x7F]+/ # just for test, should change
 
  def validate_each(record, attribute, value)
    record.errors.add :name, "has non asscii chars" if value =~ @regex
  end
 
end

