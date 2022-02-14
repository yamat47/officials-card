# frozen_string_literal: true

class OfficialCardForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :tournament_1, :string
  attribute :tournament_2, :string
  attribute :date_1, :date, default: Date.current
  attribute :date_2, :date, default: Date.current
  attribute :field_1, :string
  attribute :field_2, :string
  attribute :home_1, :string
  attribute :home_2, :string
  attribute :visitor_1, :string
  attribute :visitor_2, :string

  def generate_pdf
    return false unless valid?

    ::OfficialCardReport.generate(
      tournament_1: tournament_1,
      tournament_2: tournament_1,
      date_1: date_1.present? ? I18n.l(date_1, format: :short) : nil,
      date_2: date_2.present? ? I18n.l(date_2, format: :short) : nil,
      field_1: field_1,
      field_2: field_2,
      home_1: home_1,
      home_2: home_2,
      visitor_1: visitor_1,
      visitor_2: visitor_2
    )
  end
end
