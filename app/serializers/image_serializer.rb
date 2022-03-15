class ImageSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :position, :url

  def url
    rails_blob_path(object.file) if object.file.attached?
  end
end
