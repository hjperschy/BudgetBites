class Style < ApplicationRecord
    has_many :items, dependent: :destroy
    validates :resturant, presence: true
    validates :styleType, presence: true
    validates :address, presence: true
    validate :avgPrice, presence: true
    scope :filter_by_style, -> (style) { where styleType: style }
    scope :filter_by_price, -> (price) { where avgPrice: price }
end
