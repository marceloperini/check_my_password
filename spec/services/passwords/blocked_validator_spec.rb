# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Passwords::BlockedValidator do
  subject(:validator) { described_class.new(password) }

  describe '#valid?' do
    context 'when the password are present at PasswordBlock' do
      let(:password) { Faker::Internet.password }

      before { create(:password_block, password: password) }

      it { expect(validator).not_to be_valid }
    end

    context 'when the password are not present at PasswordBlock' do
      let(:password) { Faker::Internet.password }

      it { expect(validator).to be_valid }
    end
  end

  describe '#error' do
    let(:password) { 'password' }

    it { expect(validator.error).to eq(I18n.t!('services.passwords/blocked.error')) }
  end
end
