class Customer < ApplicationRecord
    has_many :carts
    # has_many :products, :through => :carts
    has_many :sports
    has_one_attached :avatar
    has_many :settings, as: :configurable
end