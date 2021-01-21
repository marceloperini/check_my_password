# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Password::NumberValidator do
  subject(:validator) { described_class.new }

  describe '#validade' do
    let(:form) { PasswordForm.new(password: password) }

    before { validator.validate(form) }

    context "when the password don't have numbers" do
      let(:password) { 'PassWord' }

      it { expect(form.errors).not_to be_empty }
    end

    context 'when the password have numbers' do
      let(:password) { 'Pass1Word' }

      it { expect(form.errors).to be_empty }
    end
  end
end
