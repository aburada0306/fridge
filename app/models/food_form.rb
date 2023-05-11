class FoodForm
  include ActiveModel::Model
  attr_accessor(
    :name,
    :id, :created_at, :updated_at,
    :tag_name
   )
  with_options presence: true do
    validates :tag_name
end

def save
  food = Food.create(name: tag_name )
  if tag_name.present?
    tag = Tag.where(tag_name: tag_name).first_or_initialize
    tag.save
    FoodTagRelation.create(food_id: food.id, tag_id: tag.id)
  end
end
end