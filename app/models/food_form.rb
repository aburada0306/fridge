class FoodForm
  include ActiveModel::Model
  attr_accessor(
    :name,
    :id, :created_at, :updated_at,
    :tagname
   )
  with_options presence: true do
    validates :tagname
end

def save
  food = Food.create(name: tagname )
  if tagname.present?
    tag = Tag.where(tagname: tagname).first_or_initialize
    tag.save
    FoodTagRelation.create(food_id: food.id, tag_id: tag.id)
  end
end
end