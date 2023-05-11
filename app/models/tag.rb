class Tag < ApplicationRecord
  has_many :food_tag_relations
  has_many :foods, through: :food_tag_relations
  has_many :cook_tag_relations
  has_many :cooks, through: :cook_tag_relations
  validates :tag_name,  uniqueness: true
end
