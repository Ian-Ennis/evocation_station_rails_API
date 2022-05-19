class Newevocation < ApplicationRecord
    has_one_attached :image
    has_one_attached :audio

    # belongs_to :user, optional: true

    # validates :file, presence: true

end

