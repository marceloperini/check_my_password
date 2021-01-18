# frozen_string_literal: true

module Passwords
  # @private
  class MinimumLengthValidator < Validator
    def valid?
      password.length > 5
    end
  end
end
