# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Password::SpecialSymbolValidator do
  subject(:validator) { described_class.new }

  describe '#validade' do
    let(:form) { PasswordForm.new(password: password) }

    before { validator.validate(form) }

    context "when the password don't have special characters" do
      let(:password) { Faker::Internet.password(special_characters: false) }

      it { expect(form.errors).not_to be_empty }
    end

    context 'when the password have special characters' do
      let(:password) { Faker::Internet.password(special_characters: true) }

      it { expect(form.errors).to be_empty }
    end
  end
end
