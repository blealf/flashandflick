class Tag < ApplicationRecord
    has_many :galleries
    validates :name, presence: true
end
