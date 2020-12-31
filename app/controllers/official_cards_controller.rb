# frozen_string_literal: true

class OfficialCardsController < ApplicationController
  def new
    @form = OfficialCardForm.new
  end

  def create
    @form = OfficialCardForm.new(official_card_params)

    send_data(
      @form.generate_pdf,
      filename: "official_card.pdf",
      filetype: "application/pdf",
      disposition: "inline"
    )
  end

  private
    def official_card_params
      params
        .require(:official_card_form)
        .permit(:tournament_1, :date_1, :field_1, :home_1, :visitor_1)
    end
end
