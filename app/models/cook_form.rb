class CookForm
  include ActiveModel::Model
  attr_accessor(
    :name,
    :id, :created_at, :updated_at,
    :tag_name
   )
  with_options presence: true do
    validates :tag_name,:name
end

def save
  cook = Cook.create(name: name )
  if tag_name.present?
    tag = Tag.where(tag_name: tag_name).first_or_initialize
    tag.save
    CookTagRelation.create(cook_id: cook.id, tag_id: tag.id)
  end
end
end