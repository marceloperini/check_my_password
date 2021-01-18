# frozen_string_literal: true

module Passwords
  # This class are responsible to validate if a password are valid or not
  class ValidationService < ApplicationService
    attr_reader :errors

    def initialize(password)
      @password = password
      @errors = []
    end

    def call
      errors.clear

      run_validations!

      errors.empty?
    end

    protected

    attr_reader :password

    VALIDATORS = [
      BlockedValidator,
      MinimumLengthValidator,
      DowncaseValidator,
      UpcaseValidator,
      NumberValidator,
      SpecialCharacterValidator
    ].freeze

    def run_validations!
      VALIDATORS.each do |validator_class|
        validator = validator_class.new(password)

        errors << validator.error unless validator.valid?
      end
    end
  end
end
