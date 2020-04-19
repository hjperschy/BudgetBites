class Style < ApplicationRecord
    has_many :items, dependent: :destroy
    validates :resturant, presence: true
    validates :styleType, presence: true
    validates :address, presence: true
end
