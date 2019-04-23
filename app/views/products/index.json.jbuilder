json.pagination do 
  json.page @products.total_pages
  json.total @products.total_count
end

json.data @products do |rec|
  json.id rec.id
  json.title rec.title
  json.description rec.description
  json.image rec.image.variant(
    combine_options: {
      resize: '366',
      gravity: 'center'
    }).processed.service_url if rec.image.attached?
end