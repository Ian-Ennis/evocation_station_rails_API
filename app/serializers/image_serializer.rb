class ImageSerializer < ActiveModel::Serializer
    attributes :id, :image

    include Rails.application.routes.url_helpers

    def image
        rails_blob_path(object.image, only_path: true) if object.image.attached? 
    end
    
  end
  