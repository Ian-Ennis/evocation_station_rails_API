class User < ApplicationRecord
    has_many :newevocations
    has_many :prebuiltevocations

    has_secure_password
    validates :username, presence: true, uniqueness: true
end
