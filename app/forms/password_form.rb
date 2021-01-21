# frozen_string_literal: true

class PasswordForm < ApplicationForm
  attribute :password, :string

  validates :password, presence: true, length: { minimum: 6 }

  validate_with BlockedPasswordValidator
end
