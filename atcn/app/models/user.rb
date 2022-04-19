class User < ApplicationRecord
    has_many :companies, dependent: :destroy_async
    has_many :sellers, class_name: "User", foreign_key: "admin_id"
    belongs_to :admin, class_name: "User", optional: true #user.id is foreign by default
    has_many :settings, as: :configurable
end