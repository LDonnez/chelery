class Project < ActiveRecord::Base
 has_and_belongs_to_many :photos, dependent: :destroy
end
