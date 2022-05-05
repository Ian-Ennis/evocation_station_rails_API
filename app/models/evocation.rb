class Evocation < ApplicationRecord
    # include Rails.application.routes.url_helpers
    # has_one_attached :image

    belongs_to :user, optional: true

    # validates :file, presence: true

    # def get_image_url
    #     url_for(self.file)
    # end

end
