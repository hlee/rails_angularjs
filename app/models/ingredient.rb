class Ingredient < ActiveRecord::Base
  attr_accessible :amount, :amount_units, :ingredient_name
end
