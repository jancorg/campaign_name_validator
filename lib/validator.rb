class AsciiStringValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
  	Rails.logger.debug("El valor de value es: " + value)
    #record.errors.add :name, "has non asscii chars" unless value.ascii_only?
    value.ascii_only?
  end
end
