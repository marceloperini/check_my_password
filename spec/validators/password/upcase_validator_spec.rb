# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Password::UpcaseValidator do
  subject(:validator) { described_class.new }

  describe '#validade' do
    let(:form) { PasswordForm.new(password: password) }

    before { validator.validate(form) }

    context 'when the password have only up cases' do
      let(:password) { Faker::Internet.password.upcase }

      it { expect(form.errors).not_to be_empty }
    end

    context 'when the password do not have only up cases' do
      let(:password) { Faker::Internet.password }

      it { expect(form.errors).to be_empty }
    end
  end
end
