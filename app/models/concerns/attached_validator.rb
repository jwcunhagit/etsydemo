# https://api.rubyonrails.org/classes/ActiveModel/Validator.html
# http://www.carlosramireziii.com/adding-an-attachment-validator-to-active-storage.html
# https://hackernoon.com/performing-custom-validations-in-rails-an-example-9a373e807144
class AttachedValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, :attached, options) unless value.attached?
  end
end