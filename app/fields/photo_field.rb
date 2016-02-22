require "administrate/fields/base"

class PhotoField < Administrate::Field::Base
  def to_s
    data
  end
end
