class User < ApplicationRecord
    has_many :writings
    has_many :images
    has_many :sounds
    has_many :newevocations
    has_many :prebuiltevocations

    has_secure_password
    validates :username, presence: true, uniqueness: true
end
