class Exhibition < ApplicationRecord
  validates :name, presence: true

  attribute :name, :string, default: ''
  attribute :description, :string, default: ''
end
