# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PasswordBlock, type: :model do
  subject(:password_block) { build(:password_block) }

  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to validate_uniqueness_of(:password) }
end
