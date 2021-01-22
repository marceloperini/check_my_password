# frozen_string_literal: true

module Password
  class SequencialValidator < ActiveModel::Validator
    def validate(record)
      return unless record.password.present?
      return unless record.password[/((.)\2+)/]

      record.errors.add :password, :sequencial_characters
    end
  end
end
