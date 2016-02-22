require "administrate/fields/base"

class UserField < Administrate::Field::Base
  def to_s
    data
  end
end
