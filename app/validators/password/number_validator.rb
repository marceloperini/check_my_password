# frozen_string_literal: true

module Password
  class NumberValidator < ActiveModel::Validator
    def validate(record)
      return if record.password.empty?
      return if record.password[/\d/]

      record.errors.add :password, :no_numbers
    end
  end
end
