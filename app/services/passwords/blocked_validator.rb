# frozen_string_literal: true

module Passwords
  # @private
  class BlockedValidator < Validator
    def valid?
      PasswordBlock.where(password: password).empty?
    end
  end
end
