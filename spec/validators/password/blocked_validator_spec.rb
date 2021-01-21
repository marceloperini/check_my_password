# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Password::BlockedValidator do
  subject(:validator) { described_class.new }

  describe '#validade' do
    let(:form) { PasswordForm.new(password: password) }
    let(:password) { Faker::Internet.password }

    context 'when the password are present at PasswordBlock' do
      before do
        create(:password_block, password: password)

        validator.validate(form)
      end

      it { expect(form.errors).not_to be_empty }
    end

    context 'when the password are not present at PasswordBlock' do
      before { validator.validate(form) }

      it { expect(form.errors).to be_empty }
    end
  end
end
