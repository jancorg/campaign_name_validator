class AsciiStringValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    record.errors.add attribute, "non ascii" unless value.ascii_only?
  end

end
