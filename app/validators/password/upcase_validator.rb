# frozen_string_literal: true

module Password
  class UpcaseValidator < ActiveModel::Validator
    def validate(record)
      return unless record.password.present?
      return if record.password.upcase != record.password

      record.errors.add :password, :only_upcase
    end
  end
end
