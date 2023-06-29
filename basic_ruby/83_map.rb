class User
    attr_accessor :name
end

user1 = User.new
user1.name = "Nakamura"
user2 = User.new
user2.name = "Sato"
user3 = User.new
user3.name = "Tanaka"

users = [user1, user2, user3]

# ver1
names = users.map do |user|
    user.name
end
p names

# ver2
names = users.map { |user| user.name }
p names

# ver3
names = users.map(&:name)
p names
