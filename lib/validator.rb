class AsciiStringValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
  	Rails.logger = Logger.new(STDOUT)
    Rails.logger = Log4r::Logger.new( "El valor de lo huevos es " + value)
    #record.errors.add :name, "has non asscii chars" unless value.ascii_only?
    value.ascii_only?
  end
end
