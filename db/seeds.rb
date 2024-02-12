6.times do |i|
  property = Property.create!({
    name: Faker::Lorem.unique.sentence(word_count: 3),
    description: Faker::Lorem.paragraph(sentence_count: 10),
    headline: Faker::Lorem.unique.sentence(word_count: 3),
    address_1: Faker::Address.street_address,
    address_2: Faker::Address.street_name,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country,
    price: Money.from_amount((50..100).to_a.sample,'USD'),
  })
  property.images.attach(io: File.open("db/images/property#{i + 1}.jpeg"), filename: property.name)
  property.images.attach(io: File.open("db/images/property#{i + 4}.jpeg"), filename: property.name)

end
