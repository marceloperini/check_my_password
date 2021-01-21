# frozen_string_literal: true

module Passwords
  class ValidationsController < ApplicationController
    def create
      form = PasswordForm.new(password_params)

      if form.valid?
        head :ok
      else
        render json: { errors: form.errors.full_messages },
               status: :unprocessable_entity
      end
    end

    private

    def password_params
      params.require(:validation).permit(:password)
    end
  end
end
