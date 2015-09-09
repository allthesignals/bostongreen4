class ParkImage < ActiveRecord::Base
  self.table_name = 'public.park_images'

  has_attached_file :file, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/
  has_and_belongs_to_many :parks
end
