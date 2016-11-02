class Gallery < ApplicationRecord
  extend FriendlyId
  has_and_belongs_to_many :photos, dependent: :destroy
  friendly_id :title, use: [:slugged, :finders]
end
