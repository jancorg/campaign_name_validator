class AsciiStringValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    record.errors.add attribute, "has non asscii chars" unless value.ascii_only?
  end

end
