class Group < ActiveRecord::Base
  has_many :members
  has_one :ranking
end
