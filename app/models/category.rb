class Category < ApplicationRecord
  has_many :restaurants

  validates :title, presence: true, uniqueness: { case_sensitive: false }

  has_one_attached :image
end
