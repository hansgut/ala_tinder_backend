class Image < ApplicationRecord
  belongs_to :gallery

  has_one_attached :file

  validates :file, presence: true
end
