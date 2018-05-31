class Concert < ApplicationRecord
  has_attached_file :concert_img, styles: { medium: "250x350>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :concert_img, content_type: /\Aimage\/.*\z/
end
