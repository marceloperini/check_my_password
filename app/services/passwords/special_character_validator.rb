# frozen_string_literal: true

module Passwords
  # @private
  class SpecialCharacterValidator < Validator
    def valid?
      !password.gsub(/(\d|[a-zA-Z])/, '').empty?
    end
  end
end
