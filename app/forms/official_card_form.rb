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
end
