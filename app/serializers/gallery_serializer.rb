class GallerySerializer < ActiveModel::Serializer

  attributes :id, :images
  has_many :images do
    object.images.order(:position)
  end
end
