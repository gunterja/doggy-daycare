class Owner < ActiveRecord::Base
  has_many :dogs
  validates :first_name, :last_name, :phone, presence: true

  def last_first
    "#{last_name}, #{first_name}"
  end

  def name
    "#{first_name} #{last_name}"
  end
end
