# frozen_string_literal: true

class PasswordForm < ApplicationForm
  attribute :password, :string

  validates :password, presence: true, length: { minimum: 6 }

  validates_with Password::BlockedValidator
  validates_with Password::UpcaseValidator
  validates_with Password::DowncaseValidator
  validates_with Password::NumberValidator
  validates_with Password::SpecialSymbolValidator
end
