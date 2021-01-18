# frozen_string_literal: true

module Passwords
  # @private
  class DowncaseValidator < Validator
    def valid?
      password.downcase != password
    end
  end
end
