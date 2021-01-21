# frozen_string_literal: true

module Password
  class SpecialSymbolValidator < ActiveModel::Validator
    def validate(record)
      return if record.password.empty?
      return unless record.password.gsub(/(\d|[a-zA-Z])/, '').empty?

      record.errors.add :password, :only_upcase
    end
  end
end
