# frozen_string_literal: true

class OfficialCardForm
  include ActiveModel::Model
  include ActiveModel::Attributes
  include ActiveModel::Validations

  attribute :tournament, :string
  attribute :date, :date, default: Date.current
  attribute :field, :string
  attribute :home, :string
  attribute :visitor, :string

  validates :tournament, presence: true
  validates :date, presence: true
  validates :field, presence: true
  validates :home, presence: true
  validates :visitor, presence: true

  def generate_pdf
    return false unless valid?
  end
end
