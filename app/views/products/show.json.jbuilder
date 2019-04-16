  json.id @product.id
  json.title @product.title
  json.description @product.description
  json.image @product.image.variant(
    combine_options: {
      resize: '552',
      gravity: 'center'
    }).processed.service_url if @product.image.attached?
  json.more_images @product.product_tags.each do |pt|
    next unless pt.image.attached?
    
    json.id pt.id
    json.filename pt.tag.name
    json.url pt.image.variant(combine_options: { resize: '552', gravity: 'center' }).processed.service_url
  end