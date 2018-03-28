class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }

end
