class Cook < ApplicationRecord
  validates :name,  uniqueness: true
  has_many :cook_tag_relations
  has_many :tags, through: :cook_tag_relations
end
