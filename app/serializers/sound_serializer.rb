class SoundSerializer < ActiveModel::Serializer
    attributes :id, :audio, :audio_name

    include Rails.application.routes.url_helpers

    def audio
        rails_blob_path(object.audio, only_path: true) if object.audio.attached? 
    end 

  end
  