# frozen_string_literal: true

class PasswordBlock < ApplicationRecord
  validates :password, presence: true, uniqueness: true
end
