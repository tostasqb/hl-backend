json.array! @ambiences do |ambience|
  json.id ambience.id
  json.image url_for(ambience.image)
end
