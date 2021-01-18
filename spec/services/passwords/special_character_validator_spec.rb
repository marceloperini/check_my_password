# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Passwords::SpecialCharacterValidator do
  subject(:validator) { described_class.new(password) }

  describe '#valid?' do
    context "when the password don't have special characters" do
      let(:password) { Faker::Internet.password(special_characters: false) }

      it { expect(validator).not_to be_valid }
    end

    context 'when the password have special characters' do
      let(:password) { Faker::Internet.password(special_characters: true) }

      it { expect(validator).to be_valid }
    end
  end

  describe '#error' do
    let(:password) { 'password' }

    it { expect(validator.error).to eq(I18n.t!('services.passwords/special_character.error')) }
  end
end
