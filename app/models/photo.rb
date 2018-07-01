class Photo < ApplicationRecord
  belongs_to :exhibition, dependent: :destroy
end
