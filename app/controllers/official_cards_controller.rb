# frozen_string_literal: true

class OfficialCardsController < ApplicationController
  def new
    @form = OfficialCardForm.new
  end

  def create
    @form = OfficialCardForm.new(official_card_params)

    if @form.generate_pdf
      raise
    else
      render :new
    end
  end

  private
    def official_card_params
      params
        .require(:official_card_form)
        .permit(:tournament, :date, :field, :home, :visitor)
    end
end
