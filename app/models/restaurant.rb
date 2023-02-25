class Restaurant < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "city", "complement", "created_at", "delivery_tax", "description", "id", "name", "neighborhood", "number", "state", "street", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["category", "image_attachment", "image_blob", "orders", "product_categories"]
  end
  
  belongs_to :category

  has_many :product_categories
  has_many :orders

  validates :name, :delivery_tax, :city, :neighborhood, :street, :number, presence: true

  has_one_attached :image
end
