class Truck < ApplicationRecord
  belongs_to :user
  has_many :menus
  has_many :reviews
end
