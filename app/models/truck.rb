class Truck < ApplicationRecord
    belongs_to :user
    has_many :reviews
    has_many :menus
    validates :user_id, uniqueness: true
end
