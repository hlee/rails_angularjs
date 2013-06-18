class Recipe < ActiveRecord::Base
  attr_accessible :description, :instructions, :title
  has_many :ingredients
end
