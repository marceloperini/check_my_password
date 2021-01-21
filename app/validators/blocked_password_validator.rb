# frozen_string_literal: true

class BlockedPasswordValidator < ActiveModel::Validator
  def validate(record)
    return true if PasswordBlock.where(password: record.password).empty?

    record.errors.add :password, :blocked
  end
end
