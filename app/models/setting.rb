class Setting < ActiveRecord::Base
  has_attached_file :header_image, styles: { thumbnail: "50x50", medium: "400x400!", large: "1000x666!" },
    default_url: "/images/:style/missing.png",
    convert_options: { medium: "-quality 75 -strip",
                       large: "-quality 75 -strip" }
  validates_attachment_content_type :header_image, content_type: /\Aimage\/.*\Z/
end
