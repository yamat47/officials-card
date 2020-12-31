# frozen_string_literal: true

class OfficialCardForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :tournament_1, :string
  attribute :date_1, :date, default: Date.current
  attribute :field_1, :string
  attribute :home_1, :string
  attribute :visitor_1, :string

  def generate_pdf
    return false unless valid?

    ::OfficialCardReport.generate(
      tournament_1: tournament_1,
      date_1: date_1.present? ? I18n.l(date_1, format: :short) : nil,
      field_1: field_1,
      home_1: home_1,
      visitor_1: visitor_1
    )
  end
end
