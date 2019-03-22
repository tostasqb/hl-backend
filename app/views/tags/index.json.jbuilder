json.tag_groups do
  json.array! @tag_groups, :id, :name
end

json.tags do
  json.array! @tags, :id, :name, :tag_group_id
end
