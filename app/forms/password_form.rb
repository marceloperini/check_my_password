# frozen_string_literal: true

class PasswordForm < ApplicationForm
  attribute :password, :string

  validates :password, presence: true, length: { minimum: 6 }

  validates_with Password::BlockedValidator, Password::UpcaseValidator,
                 Password::DowncaseValidator, Password::NumberValidator,
                 Password::SpecialSymbolValidator
end
