class Photo < ApplicationRecord
  belongs_to :exhibition

  mount_uploader :image, ImageUploader
  attribute :exhibition_id, :integer, default: nil
  attribute :order, :integer, default: 0
end
