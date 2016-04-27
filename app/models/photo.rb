class Photo < ActiveRecord::Base
  before_create :default_name

  has_and_belongs_to_many :galleries
  has_attached_file :photo, styles: { thumbnail: "50x50", medium: "400x400!", large: "1000x666!" },
                            default_url: "/images/:style/missing.png",
                            convert_options: { medium: "-quality 75 -strip",
                                               large: "-quality 75 -strip" }

  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  # validates_with AttachmentSizeValidator, :attributes => :photo, :less_than => 1.megabytes

  def default_name
    self.title = File.basename(photo_file_name, ".*").titleize if title.nil?
  end
end
