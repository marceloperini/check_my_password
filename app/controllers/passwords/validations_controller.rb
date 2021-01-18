# frozen_string_literal: true

module Passwords
  class ValidationsController < ApplicationController
    def create
      service = Passwords::ValidationService.new(params[:password])

      if service.call
        head :ok
      else
        render json: { errors: service.errors }, status: :unprocessable_entity
      end
    end
  end
end
