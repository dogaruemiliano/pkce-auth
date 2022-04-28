puts '-' * 80

if Doorkeeper::Application.count.zero?
  puts 'Creating Apps...'
  puts 'Creating App for iOS'
  app = Doorkeeper::Application.create!(name: 'iOS client', redirect_uri: 'exp://192.168.0.107:19000', scopes: ['read', 'write'])
  puts "App Id: #{app.uid}"
  puts "App Secret: #{app.secret}"
  puts 'Creating App for Android'
  app = Doorkeeper::Application.create!(name: 'Android client', redirect_uri: 'exp://192.168.0.107:19000', scopes: ['read', 'write'])
  puts "App Id: #{app.uid}"
  puts "App Secret: #{app.secret}"
  puts 'Creating App for React'
  app = Doorkeeper::Application.create!(name: 'React', redirect_uri: 'exp://192.168.0.107:19000', scopes: ['read', 'write'])
  puts "App Id: #{app.uid}"
  puts "App Secret: #{app.secret}"
  puts 'Created Apps'
else
  puts 'Apps already created'
end

puts '-' * 80
puts '-' * 80

puts 'Creating/Setting Users...'
user1 = User.find_by(email: 'doggy@gmail.com') || User.create!(email: 'doggy@gmail.com', password: 'admin123@')
puts "Created/Setted user with email: #{user1.email}"
user2 = User.find_by(email: 'dogg@gmail.com') || User.create!(email: 'dogg@gmail.com', password: 'admin123@')
puts "Created/Setted user with email: #{user2.email}"
user3 = User.find_by(email: 'dog@gmail.com') || User.create!(email: 'dog@gmail.com', password: 'admin123@')
puts "Created/Setted user with email: #{user3.email}"
puts 'Created/Setted Users'

puts '-' * 80