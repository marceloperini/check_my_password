# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Passwords::NumberValidator do
  subject(:validator) { described_class.new(password) }

  describe '#valid?' do
    context "when the password don't have numbers" do
      let(:password) { 'PassWord' }

      it { expect(validator).not_to be_valid }
    end

    context 'when the password have numbers' do
      let(:password) { 'Pass1Word' }

      it { expect(validator).to be_valid }
    end
  end

  describe '#error' do
    let(:password) { 'password' }

    it { expect(validator.error).to eq(I18n.t!('services.passwords/number.error')) }
  end
end
