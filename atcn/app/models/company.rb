class Company < ApplicationRecord
    belongs_to :user, required: true
    validate :admin_only_user
    has_many :products do 
        def find_small
            where("quantity < 1")
        end
    end

    def admin_only_user
        unless self.user.try(:admin_id).blank?
            errors.add(:user_id, "must be Admin")
        end
    end

    before_destroy do 
        puts "--------destroy id : #{self.id}, user: #{self.user.id}"
    end

end
module SampleOne

end