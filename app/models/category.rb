class Category < ApplicationRecord
  has_ancestry
  validates_presence_of :title, :description
  has_many :products
end
