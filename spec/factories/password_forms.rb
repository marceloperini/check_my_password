# frozen_string_literal: true

FactoryBot.define do
  factory :password_form, class: PasswordForm do
    password { Faker::Internet.password }
  end
end
