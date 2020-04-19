class Style < ApplicationRecord
    validates :resturant, presence: true
    validates :styleType, presence: true
    validates :address, presence: true
end
