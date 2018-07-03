class Text < ApplicationRecord
  validates :title, presence: true

  attribute :title, :string, default: 'no title'
  attribute :body, :string, default: ''
  attribute :published, :boolean, default: false
end
