class Food < ApplicationRecord
  validates :name,  uniqueness: true
  has_many :food_tag_relations
  has_many :tags, through: :food_tag_relations
end
