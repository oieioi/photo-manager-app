class Photo < ApplicationRecord
  belongs_to :exhibition, dependent: :destroy

  mount_uploader :image, ImageUploader
end
