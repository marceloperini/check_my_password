# frozen_string_literal: true

module Passwords
  # @private
  class UpcaseValidator < Validator
    def valid?
      password.upcase != password
    end
  end
end
