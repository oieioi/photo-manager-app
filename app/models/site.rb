class Site < ApplicationRecord
  attribute :name, :string, default: 'photo manager app'
  attribute :email, :string, default: 'nothing@example.com'
  attribute :description, :string, default: ''
  attribute :author_name, :string, default: 'anonymous'
end
