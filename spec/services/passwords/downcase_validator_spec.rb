# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Passwords::DowncaseValidator do
  subject(:validator) { described_class.new(password) }

  describe '#valid?' do
    context 'when the password have only lower cases' do
      let(:password) { Faker::Internet.password.downcase }

      it { expect(validator).not_to be_valid }
    end

    context 'when the password do not have only lower cases' do
      let(:password) { Faker::Internet.password }

      it { expect(validator).to be_valid }
    end
  end

  describe '#error' do
    let(:password) { 'password' }

    it { expect(validator.error).to eq(I18n.t!('services.passwords/downcase.error')) }
  end
end
