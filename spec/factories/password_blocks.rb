# frozen_string_literal: true

FactoryBot.define do
  factory :password_block do
    password { Faker::Internet.password }
  end
end
