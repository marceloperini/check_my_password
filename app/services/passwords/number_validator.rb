# frozen_string_literal: true

module Passwords
  # @private
  class NumberValidator < Validator
    def valid?
      password[/\d/]
    end
  end
end
