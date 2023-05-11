class CookForm
  include ActiveModel::Model
  attr_accessor(
    :name,
    :id, :created_at, :updated_at,
    :tagname
   )
  with_options presence: true do
    validates :tagname,:name
end

def save
  cook = Cook.create(name: name )
  if tagname.present?
    tag = Tag.where(tagname: tagname).first_or_initialize
    tag.save
    CookTagRelation.create(cook_id: cook.id, tag_id: tag.id)
  end
end
end