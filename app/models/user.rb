class User < ApplicationRecord
    has_many :user_mars_estates
    has_many :mars_estates, through: :user_mars_estates
end
