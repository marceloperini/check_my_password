# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :passwords do
    resources :validations, only: :create
  end

  root to: 'home#index'
end
