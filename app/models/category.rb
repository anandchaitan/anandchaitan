class Category < ApplicationRecord
  require 'csv'
  
  has_ancestry
  validates_presence_of :title, :description
  has_many :products

  def self.import(file)
    CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
      Category.create(row.to_hash)
    end
  end
end
