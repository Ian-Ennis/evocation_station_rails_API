class EvocationSerializer < ActiveModel::Serializer
    attributes :id, :image, :audio, :text

    include Rails.application.routes.url_helpers

    def image
        rails_blob_path(object.image, only_path: true) if object.image.attached? 
    end

    def audio
        rails_blob_path(object.audio, only_path: true) if object.audio.attached? 
    end

  end