100.times do |n|
  p n
  product = Product.new(
    title: FFaker::Product.product_name + "#{n}",
    description: FFaker::Book.description,
    image_url: FFaker::Avatar.image,
    price: n + 1
  )
  product.save!
end