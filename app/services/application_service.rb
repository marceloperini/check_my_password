# frozen_string_literal: true

class ApplicationService
  class << self
    def call(*args, &block)
      service = new(*args)

      service.call(&block)

      service
    end
  end

  private

  def i18n_scope
    [:services, self.class.to_s.underscore.gsub('_service', '').to_sym]
  end

  def translate(key, options = {})
    I18n.t(key, { scope: i18n_scope }.merge(options))
  end

  alias t translate
end
