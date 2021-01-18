# frozen_string_literal: true

class PasswordValidationService < ApplicationService
  attr_reader :errors

  def initialize(password)
    @password = password
    @errors = []
  end

  def call
    errors.clear

    run_validations!

    binding.pry
    errors.empty?
  end

  private

  attr_reader :password

  def run_validations!
    errors << t('.blocked') if password_blocked?
    errors << t('.minimal_length') if less_than_six_length?
    errors << t('.only_downcase') if only_downcase?
    errors << t('.only_upcase') if only_upcase?
    errors << t('.only_characters') if only_characters?
    errors << t('.no_special_characters') if no_special_characters?
  end

  def less_than_six_length?
    password.size < 6
  end

  def only_downcase?
    password.gsub(/([A-Z])/, '') == password
  end

  def only_upcase?
    password.gsub(/([a-z])/, '') == password
  end

  def only_characters?
    password.gsub(/\d/, '') == password
  end

  def no_special_characters?
    password.gsub(/!(\d|[a-zA-Z])/, '') == password
  end

  def password_blocked?
    PasswordBlock.where(password: password).any?
  end
end
