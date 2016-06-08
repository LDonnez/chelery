class PaperclipField < Administrate::Field::Base

  def url(type)
    if type
      data.url(type)
    else
      data.url
    end
  end

  def thumbnail
    data.url(:thumbnail)
  end

  def medium
    data.url(:medium)
  end

  def large
    data.url(:large)
  end

  def original
    data.url
  end

  def to_s
    data
  end

end
