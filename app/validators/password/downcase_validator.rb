# frozen_string_literal: true

module Password
  class DowncaseValidator < ActiveModel::Validator
    def validate(record)
      return if record.password.empty?
      return if record.password.downcase != record.password

      record.errors.add :password, :only_downcase
    end
  end
end
