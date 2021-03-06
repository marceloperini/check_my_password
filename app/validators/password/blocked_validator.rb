# frozen_string_literal: true

module Password
  class BlockedValidator < ActiveModel::Validator
    def validate(record)
      return unless record.password.present?
      return if PasswordBlock.where(password: record.password).empty?

      record.errors.add :password, :blocked
    end
  end
end
