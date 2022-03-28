class Department < ApplicationRecord

  def self.import(file)
    CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
      Department.create(row.to_hash)
    end
  end
end
