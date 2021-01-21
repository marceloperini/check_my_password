# frozen_string_literal: true

module Password
  class SpecialSymbolValidator < ActiveModel::Validator
    def validate(record)
      return unless record.password.present?
      return unless record.password.gsub(/(\d|[a-zA-Z])/, '').empty?

      record.errors.add :password, :no_special_symbol
    end
  end
end
