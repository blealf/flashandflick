class About < ApplicationRecord
    validates :social, presence: true

    def self.social_type
        return ["About Me", "Email", "Facebook", "Instagram", "Twitter", "Google Plus"]
    end
end
