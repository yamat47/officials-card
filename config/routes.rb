# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "official_cards#new"

  resources :official_cards, only: [:new, :create]
end
