class Exhibition < ApplicationRecord
  validates :name, presence: true

  attribute :name, :string, default: ''
  attribute :description, :string, default: ''

  has_many :photos
  accepts_nested_attributes_for :photos, allow_destroy: true
end
