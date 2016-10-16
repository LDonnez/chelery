class Photo < ActiveRecord::Base
  before_create :default_name
  before_save :extract_dimensions
  serialize :dimensions

  has_and_belongs_to_many :galleries
  has_attached_file :photo, styles: { thumbnail: "200x200#", medium: "400x400#", large: "1000x666!" },
    default_url: "/images/:style/missing.png",
    convert_options: { medium: "-quality 75 -strip",
                       large: "-quality 75 -strip" }

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  # validates_with AttachmentSizeValidator, :attributes => :photo, :less_than => 1.megabytes
  def image?
    photo_content_type =~ %r{^(image|(x-)?application)/(bmp|gif|jpeg|jpg|pjpeg|png|x-png)$}
  end

  private

  def default_name
    self.title = File.basename(photo_file_name, ".*").titleize if title.nil?
  end

  def extract_dimensions
    return unless image?
    tempfile = photo.queued_for_write[:original]
    unless tempfile.nil?
      geometry = Paperclip::Geometry.from_file(tempfile)
      self.dimensions = [geometry.width.to_i, geometry.height.to_i].join('x')
    end
  end
end
