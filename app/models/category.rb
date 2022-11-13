class Category < ApplicationRecord
	has_many :products, :through => :products
end
