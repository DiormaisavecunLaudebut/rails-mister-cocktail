class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :quantity, :ingredient, :cocktail, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
end
