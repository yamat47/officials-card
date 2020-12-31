# frozen_string_literal: true

class OfficialCardsController < ApplicationController
  def new
    @form = OfficialCardForm.new
  end
end
