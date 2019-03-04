User.destroy_all
Company.destroy_all
30.times do
  User.create(
    email: Faker::Internet.email,
    password: 123456
  )
end
users = User.all
20.times do
  Company.create(
    name: Faker::GreekPhilosophers.name
  )
end

companies = Company.all
250.times do
  Complain.create(
    content: Faker::GreekPhilosophers.quote,
    user: users.sample,
    company: companies.sample
  )
end

if Rails.env.development?
  AdminUser.destroy_all
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end