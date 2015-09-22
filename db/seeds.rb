require 'ffaker'

lucas = User.create(email: 'lucas@devbootcamp.com', password: 'testing')
larissa = User.create(email: 'larissa@gmail.com', password: 'moretesting')

sizes = ['S', 'M', 'L', 'XL', 'XXL']
colors = ['green', 'blue', 'red', 'rainbow']
prices = [3.74, 5.00, 15.00, 0]
users = [lucas, larissa]

tshirts = 10.times.map do
  Tshirt.create({
    name: FFaker::Lorem.words(3).join(" "),
    color: colors.sample,
    size: sizes.sample,
    price: prices.sample,
    user: users.sample,
  })
end
