# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Password::SequencialValidator do
  subject(:test_object) { test_class.new(password: password) }

  let(:test_class) do
    TestClass = Class.new do
      include ActiveModel::Model
      include ActiveModel::Attributes

      attribute :password, :string

      validates_with Password::SequencialValidator
    end
  end

  describe '#validate' do
    before { test_object.valid? }

    context "when the password don't have sequences" do
      let(:password) { '3bvm3EV27C!#Ri' }

      it { expect(test_object.errors).to be_empty }
    end

    context 'when the password have sequences' do
      %w[aaaa w@@w oo11].each do |password_string|
        context "with the password #{password_string}" do
          let(:password) { password_string }

          it { expect(test_object.errors).not_to be_empty }
        end
      end
    end
  end
end
