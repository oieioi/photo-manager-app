class Exhibition < ApplicationRecord
  validates :name, presence: true

  attribute :name, :string, default: ''
  attribute :description, :string, default: ''

  has_many :photos
end
