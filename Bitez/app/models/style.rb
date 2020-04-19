class Style < ApplicationRecord
    validates :resturant, presence: true
    validates :styleType, presence: true
end
