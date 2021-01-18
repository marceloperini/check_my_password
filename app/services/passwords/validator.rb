# frozen_string_literal: true

module Passwords
  # @private
  class Validator
    def initialize(password)
      @password = password
    end

    def error
      t('.error')
    end

    private

    attr_reader :password

    def i18n_scope
      [:services, self.class.to_s.underscore.gsub('_validator', '').to_sym]
    end

    def translate(key, options = {})
      I18n.t(key, { scope: i18n_scope }.merge(options))
    end

    alias t translate
  end
end
