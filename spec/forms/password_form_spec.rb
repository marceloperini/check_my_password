# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PasswordForm, type: :form do
  subject(:form) { build(:password_form) }

  it { expect(form).to validate_presence_of(:password) }
  it { expect(form).to validate_length_of(:password).is_at_least(6) }
end
