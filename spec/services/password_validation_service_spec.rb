# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PasswordValidationService do
  subject(:service) { described_class.new(password) }

  describe '#call' do
    context 'when the password are presented at PasswordBlock' do
      let(:password) { Faker::Internet.password }

      before { create(:password_block, password: password) }

      it { expect(service.call).to be_falsey }

      it 'includes an error message' do
        service.call

        expect(service.errors).to include(
          I18n.t!('services.password_validation.blocked')
        )
      end
    end

    context 'when the password have less than 6 length' do
      let(:password) { '12345' }

      it { expect(service.call).to be_falsey }

      it 'includes an error message' do
        service.call

        expect(service.errors).to include(
          I18n.t!('services.password_validation.minimal_length')
        )
      end
    end

    context 'when the password have only lower cases' do
      let(:password) { Faker::Internet.password.downcase }

      it { expect(service.call).to be_falsey }

      it 'includes an error message' do
        service.call

        expect(service.errors).to include(
          I18n.t!('services.password_validation.only_downcase')
        )
      end
    end

    context 'when the password have only upper cases' do
      let(:password) { Faker::Internet.password.upcase }

      it { expect(service.call).to be_falsey }

      it 'includes an error message' do
        service.call

        expect(service.errors).to include(
          I18n.t!('services.password_validation.only_upcase')
        )
      end
    end

    context "when the password don't have a number" do
      let(:password) { 'PassWord' }

      it { expect(service.call).to be_falsey }

      it 'includes an error message' do
        service.call

        expect(service.errors).to include(
          I18n.t!('services.password_validation.only_characters')
        )
      end
    end

    context "when the password don't have a symbol" do
      let(:password) { Faker::Internet.password(special_characters: false) }

      it { expect(service.call).to be_falsey }

      it 'includes an error message' do
        service.call

        expect(service.errors).to include(
          I18n.t!('services.password_validation.no_special_characters')
        )
      end
    end

    context 'when the password have sequences' do
    end

    context 'when the password are valid' do
      let(:password) { Faker::Internet.password(special_characters: true) }

      fit { expect(service.call).to be_truthy }

      it 'is expected that errors messages are empty' do
        service.call

        expect(service.errors).to be_empty
      end
    end
  end
end
