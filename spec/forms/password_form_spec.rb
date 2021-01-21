require 'rails_helper'

RSpec.describe PasswordForm, type: :form do
  it { is_expected.to validate_presence_of :password }
  it { is_expected.to validate_length_of(:password).is_at_least(6) }
end
