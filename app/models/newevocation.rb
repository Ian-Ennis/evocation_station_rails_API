class Newevocation < ApplicationRecord
    belongs_to :user

    has_one_attached :image
    has_one_attached :audio

end

