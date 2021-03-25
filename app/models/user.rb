class User < ApplicationRecord
    has_many :favorites
    has_many :listings, through: :favorites
    has_secure_password
    validates :name, uniqueness: { case_sensitive: false }
end
