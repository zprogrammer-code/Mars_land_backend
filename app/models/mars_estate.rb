class MarsEstate < ApplicationRecord
    has_many :user_mars_estates
    has_many :users, through: :user_mars_estates
end
