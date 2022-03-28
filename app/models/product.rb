class Product < ApplicationRecord
  require 'csv'

  belongs_to :category

 def self.import(file)
   CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
     Product.create(row.to_hash)
    end
  end
end
