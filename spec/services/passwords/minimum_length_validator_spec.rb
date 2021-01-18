# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Passwords::MinimumLengthValidator do
  subject(:validator) { described_class.new(password) }

  describe '#valid?' do
    context 'when the password length is less than 5' do
      let(:password) { '12345' }

      it { expect(validator).not_to be_valid }
    end

    context 'when the password length is more than 5' do
      let(:password) { '123456' }

      it { expect(validator).to be_valid }
    end
  end

  describe '#error' do
    let(:password) { 'password' }

    it { expect(validator.error).to eq(I18n.t!('services.passwords/minimum_length.error')) }
  end
end
