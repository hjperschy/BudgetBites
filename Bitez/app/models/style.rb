class Style < ApplicationRecord
    belongs_to :user
    has_many :items, dependent: :destroy
    validates :resturant, presence: true
    validates :styleType, presence: true
    validates :address, presence: true
    validates :avgPrice, presence: true
    scope :filter_by_style, -> (style) { where("styleType == ?", style) }
    scope :filter_by_price, -> (high, low) { where("avgPrice >= ?", low) && where("avgPrice <= ?", high) }
end
