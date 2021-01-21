# frozen_string_literal: true

module Password
  class DowncaseValidator < ActiveModel::Validator
    def validate(record)
      return unless record.password.present?
      return if record.password.downcase != record.password

      record.errors.add :password, :only_downcase
    end
  end
end
