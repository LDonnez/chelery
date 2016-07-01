require "administrate/field/base"

class TextareaField < Administrate::Field::Base
  def to_s
    data
  end
end
