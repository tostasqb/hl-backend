json.array! @ambiences do |rec|
  json.id rec.id
  json.image rec.image.variant(
    combine_options: {
      resize: '393',
      gravity: 'center'
    }).processed.service_url if rec.image.attached?
end
