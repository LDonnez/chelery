class Group < ApplicationRecord
  has_many :members
  has_one :ranking
end
