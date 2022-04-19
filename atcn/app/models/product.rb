class Product < ApplicationRecord
    has_many :carts
    has_many :customers, :through => :carts
    has_many_attached :things
    belongs_to :company
end
