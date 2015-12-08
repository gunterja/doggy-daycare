class Dog < ActiveRecord::Base
  belongs_to :owner
  belongs_to :breed
  validates :name, :owner_id, :breed_id, presence: true
  has_attached_file :picture, :styles => { :medium => "300x300#", 
                                          :thumb => "100x100#" },
                                          :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/


end
